part of 'user_input_question_bloc.dart';

@freezed
class UserInputQuestionEvent with _$UserInputQuestionEvent {
  const factory UserInputQuestionEvent.started({
    required TestMode mode,
    required TestUserInputQuestion question,
    required bool isLast,
  }) = _Started;

  const factory UserInputQuestionEvent.answerSelected({
    required dynamic answer,
  }) = _AnswerSelected;

  const factory UserInputQuestionEvent.answerSubmitted() = _AnswerSubmitted;
}
