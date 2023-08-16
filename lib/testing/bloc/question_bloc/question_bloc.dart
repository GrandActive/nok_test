import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

part 'question_event.dart';

part 'question_state.dart';

part 'question_bloc.freezed.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  QuestionBloc() : super(const QuestionState.initial()) {
    on<QuestionEvent>((event, emit) async {
      await event.when(
        started: (question, isLast) async {
          emit(QuestionState.inProgress(question: question, isLast: isLast));
          if (question is TestSequenceQuestion) {
            add(QuestionEvent.answerSelected(answer: question.source.answers));
          }
          if (question is TestMatchingQuestion) {
            final answer = <int, int?>{};
            answer.addEntries(question.source.questions.map((e) => MapEntry(e.index, null)));
            add(QuestionEvent.answerSelected(answer: answer));
          }
        },
        answerSelected: (answer) async {
          final question = state.question;
          switch (question) {
            case TestSelectionQuestion():
              question.userAnswers = answer;
              question.isAnsweredCorrectly =
                  answer.isEmpty ? null : setEquals(answer, question.source.correctAnswerIds);
              emit(QuestionState.inProgress(
                question: question,
                isLast: state.isLast,
                selectedAnswers: answer,
              ));
              break;
            case TestUserInputQuestion():
              final userAnswer = answer == null || answer == "" ? null : answer;
              question.userAnswer = userAnswer;
              question.isAnsweredCorrectly =
                  userAnswer == null ? null : userAnswer == question.source.correctAnswer;
              emit(QuestionState.inProgress(
                question: question,
                isLast: state.isLast,
                selectedAnswers: userAnswer,
              ));
              break;
            case TestSequenceQuestion():
              final userAnswer = (answer as List<PossibleAnswer>)
                  .map((answer) => answer.index)
                  .toList(growable: false);
              question.isAnsweredCorrectly = listEquals(userAnswer, question.source.correctOrder);
              question.userAnswer = userAnswer;
              emit(QuestionState.inProgress(
                question: question,
                isLast: state.isLast,
                selectedAnswers: answer,
              ));
              break;
            case TestMatchingQuestion():
              final newAnswer = answer as Map<int, int?>;
              question.isAnsweredCorrectly = newAnswer.values.any((element) => element != null)
                  ? mapEquals(newAnswer, question.source.correctMatch)
                  : null;
              question.userAnswer = newAnswer;
              emit(QuestionState.inProgress(
                question: question,
                isLast: state.isLast,
                selectedAnswers: newAnswer,
              ));
              break;
            case null:
              break;
          }
        },
      );
    });
  }
}
