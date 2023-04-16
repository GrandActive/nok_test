part of 'test_bloc.dart';

@freezed
class TestEvent with _$TestEvent {
  const factory TestEvent.started() = _Started;

  const factory TestEvent.selected({required int index}) = _Selected;

  const factory TestEvent.answersSelected({required Set<int> answers}) = _AnswersSelected;

  const factory TestEvent.answersSent() = _AnswersSent;

  const factory TestEvent.finished() = _Finished;
}
