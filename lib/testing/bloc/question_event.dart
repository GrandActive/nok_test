part of 'question_bloc.dart';

@freezed
class QuestionEvent with _$QuestionEvent {
  const factory QuestionEvent.started({
    required TestQuestion question,
  }) = _Started;
}
