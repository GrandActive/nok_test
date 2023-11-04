part of 'matching_question_bloc.dart';

@freezed
class MatchingQuestionEvent with _$MatchingQuestionEvent {
  const factory MatchingQuestionEvent.started({
    required TestMode mode,
    required TestMatchingQuestion question,
    required bool isLast,
  }) = _Started;

  const factory MatchingQuestionEvent.answerSelected({
    required Map<int, int?> answer,
  }) = _AnswerSelected;

  const factory MatchingQuestionEvent.answerSubmitted() = _AnswerSubmitted;
}
