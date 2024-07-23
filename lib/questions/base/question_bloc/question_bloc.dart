import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

part 'question_bloc.freezed.dart';
part 'question_event.dart';
part 'question_state.dart';

abstract class QuestionBloc<Q extends TestQuestion, A>
    extends Bloc<QuestionEvent<Q, A>, QuestionState<Q, A>> {
  QuestionBloc({
    required A defaultAnswer,
    required A correctAnswer,
  }) : super(const QuestionState.initial()) {
    on<QuestionEvent<Q, A>>((event, emit) async {
      await event.when(
        started: (mode, question, isLast) async {
          emit(QuestionState.inProgress(
            mode: mode,
            question: question,
            isLast: isLast,
            selectedAnswers: defaultAnswer,
          ));
        },
        answerSelected: (answer) {
          final question = state.question;
          if (question == null) return;
          emit(QuestionState.inProgress(
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
            submitAnswer(question, selectedAnswers);
          }
        },
        answerSubmitted: () {
          final question = state.question;
          final selectedAnswers = state.selectedAnswers;
          if (question == null || selectedAnswers == null) return;
          submitAnswer(question, selectedAnswers);
          emit(QuestionState.answered(
            question: question,
            isLast: state.isLast,
            correctAnswers: correctAnswer,
            selectedAnswers: selectedAnswers,
          ));
        },
      );
    });
  }

  submitAnswer(Q question, A selectedAnswers);
}
