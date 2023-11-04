part of 'selection_question_bloc.dart';

@freezed
class SelectionQuestionEvent with _$SelectionQuestionEvent {
  const factory SelectionQuestionEvent.started({
    required TestMode mode,
    required TestSelectionQuestion question,
    required bool isLast,
  }) = _Started;

  const factory SelectionQuestionEvent.answerSelected({
    required Set<int> answer,
  }) = _AnswerSelected;

  const factory SelectionQuestionEvent.answerSubmitted() = _AnswerSubmitted;
}
