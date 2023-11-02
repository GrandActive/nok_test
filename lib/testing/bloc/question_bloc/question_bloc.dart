import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

part 'question_event.dart';

part 'question_state.dart';

part 'question_bloc.freezed.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  QuestionBloc() : super(const QuestionState.initial()) {
    on<QuestionEvent>((event, emit) async {
      await event.when(
        started: (mode, question, isLast) async {
          emit(QuestionState.inProgress(mode: mode, question: question, isLast: isLast));
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
                mode: state.mode,
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
                mode: state.mode,
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
                mode: state.mode,
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
                mode: state.mode,
                question: question,
                isLast: state.isLast,
                selectedAnswers: newAnswer,
              ));
              break;
            case null:
              break;
          }
        },
        answerSubmitted: () {
          final question = state.question;
          switch (question) {
            case TestSelectionQuestion():
              emit(QuestionState.answered(
                question: question,
                isLast: state.isLast,
                correctAnswers: question.source.correctAnswerIds,
                selectedAnswers: state.selectedAnswers,
              ));
              break;
            case TestUserInputQuestion():
              emit(QuestionState.answered(
                question: question,
                isLast: state.isLast,
                correctAnswers: question.source.correctAnswer,
                selectedAnswers: state.selectedAnswers,
              ));
              break;
            case TestSequenceQuestion():
              emit(QuestionState.answered(
                question: question,
                isLast: state.isLast,
                correctAnswers: question.source.correctOrder,
                selectedAnswers: state.selectedAnswers,
              ));
              break;
            case TestMatchingQuestion():
              emit(QuestionState.answered(
                question: question,
                isLast: state.isLast,
                correctAnswers: question.source.correctMatch,
                selectedAnswers: state.selectedAnswers,
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
