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
          emit(SequenceQuestionState.inProgress(mode: mode, question: question, isLast: isLast));
          add(SequenceQuestionEvent.answerSelected(answer: question.source.answers));
        },
        answerSelected: (answer) {
          final question = state.question;
          if (question == null) return;
          final userAnswer = (answer as List<PossibleAnswer>)
              .map((answer) => answer.index)
              .toList(growable: false);
          question.isAnsweredCorrectly = listEquals(userAnswer, question.source.correctOrder);
          question.userAnswer = userAnswer;
          emit(SequenceQuestionState.inProgress(
            mode: state.mode,
            question: question,
            isLast: state.isLast,
            selectedAnswers: answer,
          ));
        },
        answerSubmitted: () {
          final question = state.question;
          if (question == null) return;
          emit(SequenceQuestionState.answered(
            question: question,
            isLast: state.isLast,
            correctAnswers: question.source.correctOrder,
            selectedAnswers: state.selectedAnswers,
          ));
        },
      );
    });
  }
}
