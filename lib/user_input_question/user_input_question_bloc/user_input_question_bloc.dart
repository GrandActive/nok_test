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
            userInput: null,
          ));
        },
        inputChanged: (userInput) {
          final question = state.question;
          if (question == null) return;
          emit(UserInputQuestionState.inProgress(
            mode: state.mode,
            question: question,
            isLast: state.isLast,
            userInput: userInput,
          ));
        },
        putOnHold: () {
          if (state.mode == TestMode.exam) {
            final question = state.question;
            final userInput = state.userInput;
            if (question == null || userInput == null) return;
            _submitAnswer(question, userInput);
          }
        },
        answerSubmitted: () {
          final question = state.question;
          final userInput = state.userInput;
          if (question == null || userInput == null) return;
          _submitAnswer(question, userInput);
          emit(UserInputQuestionState.answered(
            question: question,
            isLast: state.isLast,
            correctAnswer: question.source.correctAnswer,
            userInput: state.userInput,
          ));
        },
      );
    });
  }

  _submitAnswer(TestUserInputQuestion question, String? userInput) {
    question.userAnswer = userInput;
    question.isAnsweredCorrectly =
        userInput == null ? null : userInput == question.source.correctAnswer;
  }
}
