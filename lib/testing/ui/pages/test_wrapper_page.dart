import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gip_test/injection.dart';
import 'package:gip_test/testing/bloc/test_bloc.dart';
import 'package:gip_test/testing/bloc/timer_bloc/timer_bloc.dart';
import 'package:gip_test/testing/domain/get_random_questions_for_test.dart';
import 'package:gip_test/testing/domain/model/test_mode.dart';
import 'package:gip_test/testing/domain/ticker.dart';

class TestWrapperPage extends StatelessWidget {
  const TestWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TestBloc>(
          create: (context) => TestBloc(getQuestions: getIt.get<GetRandomQuestionsForTest>())
            ..add(const TestEvent.started(mode: TestMode.exam)),
        ),
        BlocProvider<TimerBloc>(
          create: (context) => TimerBloc(ticker: getIt.get<Ticker>()),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<TestBloc, TestState>(
            listenWhen: (previous, current) =>
                previous.questions != current.questions || current.isFinished,
            listener: (context, state) {
              final timerBloc = context.read<TimerBloc>();
              if (state.isFinished) {
                timerBloc.add(const TimerEvent.stopped());
              } else if (state.questions.isNotEmpty) {
                timerBloc.add(const TimerEvent.started(duration: Duration(minutes: 90)));
              }
            },
          ),
          BlocListener<TimerBloc, TimerState>(
            listener: (context, state) {
              state.maybeWhen(
                finished: () {
                  context.read<TestBloc>().add(const TestEvent.finished());
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: const AutoRouter(),
      ),
    );
  }
}
