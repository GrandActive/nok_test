part of 'question_bloc.dart';

@freezed
class QuestionEvent with _$QuestionEvent {
  const factory QuestionEvent.started({
    required TestQuestion question,
    required bool isLast,
  }) = _Started;

  const factory QuestionEvent.answerSelected({
    required dynamic answer,
  }) = _AnswerSelected;
}
