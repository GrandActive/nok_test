part of 'question_bloc.dart';

@freezed
class QuestionEvent<Q, A> with _$QuestionEvent {
  const factory QuestionEvent.started({
    required TestMode mode,
    required Q question,
    required bool isLast,
  }) = _Started;

  const factory QuestionEvent.answerSelected({
    required A answer,
  }) = _AnswerSelected;

  const factory QuestionEvent.putOnHold() = _PutOnHold;

  const factory QuestionEvent.answerSubmitted() = _AnswerSubmitted;
}
