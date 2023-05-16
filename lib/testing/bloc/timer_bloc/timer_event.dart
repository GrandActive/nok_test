part of 'timer_bloc.dart';

@freezed
class TimerEvent with _$TimerEvent {
  const factory TimerEvent.started({required Duration duration}) = _Started;

  const factory TimerEvent.stopped() = _StoppedEvent;

  const factory TimerEvent.ticked({required int secondsLeft}) = _Ticked;
}
