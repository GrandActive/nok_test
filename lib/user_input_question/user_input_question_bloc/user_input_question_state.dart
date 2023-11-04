part of 'user_input_question_bloc.dart';

@freezed
class UserInputQuestionState with _$UserInputQuestionState {
  const UserInputQuestionState._();

  const factory UserInputQuestionState.initial() = Initial;

  const factory UserInputQuestionState.inProgress({
    required TestMode mode,
    required TestUserInputQuestion question,
    required bool isLast,
    dynamic selectedAnswers,
  }) = InProgress;

  const factory UserInputQuestionState.answered({
    required TestUserInputQuestion question,
    required bool isLast,
    dynamic selectedAnswers,
    dynamic correctAnswers,
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

  dynamic get selectedAnswers {
    return mapOrNull(
      inProgress: (value) => value.selectedAnswers,
      answered: (value) => value.selectedAnswers,
    );
  }
}
