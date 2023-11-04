part of 'sequence_question_bloc.dart';

@freezed
class SequenceQuestionEvent with _$SequenceQuestionEvent {
  const factory SequenceQuestionEvent.started({
    required TestMode mode,
    required TestSequenceQuestion question,
    required bool isLast,
  }) = _Started;

  const factory SequenceQuestionEvent.answerSelected({
    required dynamic answer,
  }) = _AnswerSelected;

  const factory SequenceQuestionEvent.answerSubmitted() = _AnswerSubmitted;
}
