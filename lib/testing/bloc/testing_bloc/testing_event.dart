part of 'testing_bloc.dart';

@freezed
class TestingEvent with _$TestingEvent {
  const factory TestingEvent.started({
    required TestMode mode,
    required Qualification qualification,
  }) = _Started;

  const factory TestingEvent.selected({required int index}) = _Selected;

  const factory TestingEvent.selectNextQuestion() = _SelectNextQuestion;

  const factory TestingEvent.gotFinishConfirmationAnswer({required bool confirm}) =
      _GotFinishConfirmationAnswer;

  const factory TestingEvent.finishRequested() = _FinishRequested;
}
