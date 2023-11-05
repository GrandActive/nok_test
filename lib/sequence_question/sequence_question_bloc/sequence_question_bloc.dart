import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

part 'sequence_question_event.dart';

part 'sequence_question_state.dart';

part 'sequence_question_bloc.freezed.dart';

class SequenceQuestionBloc extends Bloc<SequenceQuestionEvent, SequenceQuestionState> {
  SequenceQuestionBloc() : super(const SequenceQuestionState.initial()) {
    on<SequenceQuestionEvent>((event, emit) async {
      event.when(
        started: (mode, question, isLast) {
          emit(SequenceQuestionState.inProgress(
            mode: mode,
            question: question,
            isLast: isLast,
            selectedAnswers: question.source.answers,
          ));
          add(SequenceQuestionEvent.answerSelected(
            answer: question.source.answers,
          ));
        },
        answerSelected: (answer) {
          final question = state.question;
          if (question == null) return;
          emit(SequenceQuestionState.inProgress(
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
          emit(SequenceQuestionState.answered(
            question: question,
            isLast: state.isLast,
            correctAnswers: question.source.correctOrder,
            selectedAnswers: selectedAnswers,
          ));
        },
      );
    });
  }

  _submitAnswer(TestSequenceQuestion question, List<PossibleAnswer> selectedAnswers) {
    final userAnswer = selectedAnswers.map((answer) => answer.index).toList(growable: false);
    question.userAnswer = userAnswer;
    question.isAnsweredCorrectly = listEquals(userAnswer, question.source.correctOrder);
  }
}
