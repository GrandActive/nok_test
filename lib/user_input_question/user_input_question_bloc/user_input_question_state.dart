part of 'user_input_question_bloc.dart';

@freezed
class UserInputQuestionState with _$UserInputQuestionState {
  const UserInputQuestionState._();

  const factory UserInputQuestionState.initial() = Initial;

  const factory UserInputQuestionState.inProgress({
    required TestMode mode,
    required TestUserInputQuestion question,
    required bool isLast,
    required String? userInput,
  }) = InProgress;

  const factory UserInputQuestionState.answered({
    required TestUserInputQuestion question,
    required bool isLast,
    required String? userInput,
    required String correctAnswer,
  }) = Answered;

  TestMode get mode {
    return map(
      initial: (value) => TestMode.exam,
      inProgress: (value) => value.mode,
      answered: (value) => TestMode.training,
    );
  }

  TestUserInputQuestion? get question {
    return mapOrNull(
      inProgress: (value) => value.question,
      answered: (value) => value.question,
    );
  }

  bool get isLast {
    return map(
      initial: (value) => false,
      inProgress: (value) => value.isLast,
      answered: (value) => value.isLast,
    );
  }

  String? get userInput {
    return mapOrNull(
      inProgress: (value) => value.userInput,
      answered: (value) => value.userInput,
    );
  }
}
