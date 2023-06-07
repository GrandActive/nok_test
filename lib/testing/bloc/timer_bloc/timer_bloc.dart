import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nok_test/testing/domain/ticker.dart';

part 'timer_event.dart';

part 'timer_state.dart';

part 'timer_bloc.freezed.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  final Ticker _ticker;

  StreamSubscription<int>? _tickerSubscription;

  TimerBloc({required Ticker ticker})
      : _ticker = ticker,
        super(const TimerState.initial()) {
    on<TimerEvent>((event, emit) {
      event.when(
        started: (duration) {
          emit(TimerState.running(timeLeft: duration));
          _tickerSubscription?.cancel();
          _tickerSubscription = _ticker
              .tick(ticks: duration.inSeconds)
              .listen((secsLeft) => add(TimerEvent.ticked(secondsLeft: secsLeft)));
        },
        ticked: (secondsLeft) {
          emit(
            secondsLeft > 0
                ? TimerState.running(timeLeft: Duration(seconds: secondsLeft))
                : const TimerState.finished(),
          );
        },
        stopped: () {
          state.maybeWhen(
            running: (timeLeft) {
              _tickerSubscription?.cancel();
              emit(TimerState.stopped(timeLeft: timeLeft));
            },
            orElse: () {},
          );
        },
      );
    });
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }
}
