import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gip_test/testing/bloc/timer_bloc/timer_bloc.dart';

class ResultsInfo extends StatelessWidget {
  const ResultsInfo({
    super.key,
    required this.correctAnswersCount,
  });

  final int correctAnswersCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Правильных ответов: $correctAnswersCount",
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 8),
        BlocBuilder<TimerBloc, TimerState>(
          builder: (context, state) {
            return TimePassed(
              timePassed: state.maybeWhen(
                stopped: (timeLeft) => const Duration(minutes: 90) - timeLeft,
                orElse: () => const Duration(minutes: 90),
              ),
            );
          },
        )
      ],
    );
  }
}

class TimePassed extends StatelessWidget {
  const TimePassed({
    super.key,
    required this.timePassed,
  });

  final Duration timePassed;

  String? get minutesStr {
    final minutes = timePassed.inMinutes;

    if (minutes == 0) return null;

    final String word;
    if (minutes ~/ 10 == 1) {
      word = "минут";
    } else {
      final lastDigit = minutes % 10;
      if (lastDigit == 1) {
        word = "минута";
      } else if (lastDigit >= 2 && lastDigit <= 4) {
        word = "минуты";
      } else {
        word = "минут";
      }
    }
    return "$minutes $word";
  }

  String get secondsStr {
    final seconds = timePassed.inSeconds % 60;

    final String word;
    if (seconds ~/ 10 == 1) {
      word = "секунд";
    } else {
      final lastDigit = seconds % 10;
      if (lastDigit == 1) {
        word = "секунда";
      } else if (lastDigit >= 2 && lastDigit <= 4) {
        word = "секунды";
      } else {
        word = "секунд";
      }
    }
    return "$seconds $word";
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      minutesStr == null
          ? "Затраченное время: $secondsStr"
          : "Затраченное время: $minutesStr $secondsStr",
      style: const TextStyle(fontSize: 16),
    );
  }
}
