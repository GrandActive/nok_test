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
              question.isAnsweredCorrectly = answer == question.source.correctAnswer;
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
              final oldAnswer = state.selectedAnswers as Map<int, int?>;
              final newAnswer = answer as Map<int, int?>;
              final changedQuestionIndex = () {
                for (var i = 0; i < oldAnswer.entries.length; i++) {
                  final oldValue = oldAnswer.entries.toList()[i];
                  final newValue = newAnswer.entries.toList()[i];
                  if (oldValue.key == newValue.key && oldValue.value != newValue.value) {
                    return oldValue.key;
                  }
                }
              }();

              //TODO: find question where the answer was before
              if (changedQuestionIndex != null) {}

              //TODO: nullify that value

              question.isAnsweredCorrectly = mapEquals(newAnswer, question.source.correctMatch);
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
