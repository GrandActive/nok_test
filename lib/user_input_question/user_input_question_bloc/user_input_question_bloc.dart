import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

part 'user_input_question_event.dart';

part 'user_input_question_state.dart';

part 'user_input_question_bloc.freezed.dart';

class UserInputQuestionBloc extends Bloc<UserInputQuestionEvent, UserInputQuestionState> {
  UserInputQuestionBloc() : super(const UserInputQuestionState.initial()) {
    on<UserInputQuestionEvent>((event, emit) {
      event.when(
        started: (mode, question, isLast) {
          emit(UserInputQuestionState.inProgress(
            mode: mode,
            question: question,
            isLast: isLast,
          ));
        },
        answerSelected: (answer) {
          final question = state.question;
          if (question == null) return;
          final userAnswer = answer == null || answer == "" ? null : answer;
          question.userAnswer = userAnswer;
          question.isAnsweredCorrectly =
              userAnswer == null ? null : userAnswer == question.source.correctAnswer;
          emit(UserInputQuestionState.inProgress(
            mode: state.mode,
            question: question,
            isLast: state.isLast,
            selectedAnswers: userAnswer,
          ));
        },
        answerSubmitted: () {
          final question = state.question;
          if (question == null) return;
          emit(UserInputQuestionState.answered(
            question: question,
            isLast: state.isLast,
            correctAnswers: question.source.correctAnswer,
            selectedAnswers: state.selectedAnswers,
          ));
        },
      );
    });
  }
}
