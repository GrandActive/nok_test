import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

part 'selection_question_event.dart';

part 'selection_question_state.dart';

part 'selection_question_bloc.freezed.dart';

class SelectionQuestionBloc extends Bloc<SelectionQuestionEvent, SelectionQuestionState> {
  SelectionQuestionBloc() : super(const SelectionQuestionState.initial()) {
    on<SelectionQuestionEvent>((event, emit) async {
      await event.when(
        started: (mode, question, isLast) async {
          emit(SelectionQuestionState.inProgress(
            mode: mode,
            question: question,
            isLast: isLast,
            selectedAnswers: {},
          ));
        },
        answerSelected: (answer) {
          final question = state.question;
          if (question == null) return;
          question.userAnswers = answer;
          question.isAnsweredCorrectly =
              answer.isEmpty ? null : setEquals(answer, question.source.correctAnswerIds);
          emit(SelectionQuestionState.inProgress(
            mode: state.mode,
            question: question,
            isLast: state.isLast,
            selectedAnswers: answer,
          ));
        },
        answerSubmitted: () {
          final question = state.question;
          if (question == null) return;
          emit(SelectionQuestionState.answered(
            question: question,
            isLast: state.isLast,
            correctAnswers: question.source.correctAnswerIds,
            selectedAnswers: state.selectedAnswers!,
          ));
        },
      );
    });
  }
}
