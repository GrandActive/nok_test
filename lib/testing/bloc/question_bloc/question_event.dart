part of 'question_bloc.dart';

@freezed
class QuestionEvent with _$QuestionEvent {
  const factory QuestionEvent.started({
    required TestMode mode,
    required TestQuestion question,
    required bool isLast,
  }) = _Started;

  const factory QuestionEvent.answerSelected({
    required dynamic answer,
  }) = _AnswerSelected;

  const factory QuestionEvent.answerSubmitted() = _AnswerSubmitted;
}