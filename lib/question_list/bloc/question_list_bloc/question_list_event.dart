part of 'question_list_bloc.dart';

@freezed
class QuestionListEvent with _$QuestionListEvent {
  const factory QuestionListEvent.started({
    required Qualification qualification,
  }) = _Started;

  const factory QuestionListEvent.questionSelected({required int index}) = _QuestionSelected;

  const factory QuestionListEvent.nextQuestionRequested() = _NextQuestionRequested;

  const factory QuestionListEvent.prevQuestionRequested() = _PrevQuestionRequested;
}
