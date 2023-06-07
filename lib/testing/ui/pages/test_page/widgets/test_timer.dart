import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/testing/bloc/timer_bloc/timer_bloc.dart';

class TestTimer extends StatelessWidget {
  const TestTimer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      builder: (context, state) {
        return Visibility(
          visible: state is Running,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.access_time),
              const SizedBox(width: 8),
              state.maybeWhen(
                running: (timeLeft) => TimerText(time: timeLeft),
                stopped: (timeLeft) => TimerText(time: timeLeft),
                orElse: () => const TimerText(time: Duration()),
              ),
            ],
          ),
        );
      },
    );
  }
}

class TimerText extends StatelessWidget {
  const TimerText({
    super.key,
    required this.time,
  });

  final Duration time;

  String get minutes => time.inMinutes.toString().padLeft(2, "0");

  String get seconds => (time.inSeconds % 60).toString().padLeft(2, "0");

  @override
  Widget build(BuildContext context) => Text("$minutes:$seconds");
}
