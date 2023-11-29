import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

part 'matching_question_event.dart';

part 'matching_question_state.dart';

part 'matching_question_bloc.freezed.dart';

class MatchingQuestionBloc extends Bloc<MatchingQuestionEvent, MatchingQuestionState> {
  MatchingQuestionBloc() : super(const MatchingQuestionState.initial()) {
    on<MatchingQuestionEvent>((event, emit) async {
      await event.when(
        started: (mode, question, isLast) async {
          emit(MatchingQuestionState.inProgress(
            mode: mode,
            question: question,
            isLast: isLast,
            selectedAnswers: {},
          ));
          final answer = <int, int?>{};
          answer.addEntries(question.source.questions.map((e) => MapEntry(e.index, null)));
          add(MatchingQuestionEvent.answerSelected(answer: answer));
        },
        answerSelected: (answer) {
          final question = state.question;
          if (question == null) return;
          emit(MatchingQuestionState.inProgress(
            mode: state.mode,
            question: question,
            isLast: state.isLast,
            selectedAnswers: answer,
          ));
        },
        putOnHold: () {
          if (state.mode == TestMode.exam) {
            final question = state.question;
            final selectedAnswers = state.selectedAnswers;
            if (question == null || selectedAnswers == null) return;
            _submitAnswer(question, selectedAnswers);
          }
        },
        answerSubmitted: () {
          final question = state.question;
          final selectedAnswers = state.selectedAnswers;
          if (question == null || selectedAnswers == null) return;
          _submitAnswer(question, selectedAnswers);
          emit(MatchingQuestionState.answered(
            question: question,
            isLast: state.isLast,
            correctAnswers: question.source.correctMatch,
            selectedAnswers: selectedAnswers,
          ));
        },
      );
    });
  }

  _submitAnswer(TestMatchingQuestion question, Map<int, int?> selectedAnswers) {
    question.userAnswer = selectedAnswers;
    question.isAnsweredCorrectly = selectedAnswers.values.any((element) => element != null)
        ? mapEquals(selectedAnswers, question.source.correctMatch)
        : null;
  }
}
