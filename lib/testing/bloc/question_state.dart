part of 'question_bloc.dart';

@freezed
class QuestionState with _$QuestionState {
  const factory QuestionState.initial() = _Initial;

  const factory QuestionState.inProgress({
    required TestQuestion question,
  }) = _InProgress;
}
