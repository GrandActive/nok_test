part of 'timer_bloc.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState.initial() = _Initial;

  const factory TimerState.running({required Duration timeLeft}) = Running;

  const factory TimerState.stopped({required Duration timeLeft}) = _Stopped;

  const factory TimerState.finished() = _Finished;
}
