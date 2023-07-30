part of 'test_bloc.dart';

@freezed
class TestEvent with _$TestEvent {
  const factory TestEvent.started({required TestMode mode}) = _Started;

  const factory TestEvent.selected({required int index}) = _Selected;

  const factory TestEvent.selectNextQuestion() = _SelectNextQuestion;

  const factory TestEvent.finished() = _Finished;
}
