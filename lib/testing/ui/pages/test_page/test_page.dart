import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/navigation.gr.dart';
import 'package:nok_test/testing/bloc/test_bloc.dart';
import 'package:nok_test/testing/bloc/timer_bloc/timer_bloc.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/ui/dialogs/abort_test_dialog.dart';
import 'package:nok_test/testing/ui/dialogs/finish_test_dialog.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/questions_pager.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/question_map.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/test_timer.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key, required this.mode});

  final TestMode mode;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (context.read<TestBloc>().state.isFinished) {
          return true;
        }
        return showDialog<bool>(
          context: context,
          builder: (_) => const AbortTestDialog(),
        ).then((value) {
          if (value!) {
            context.router.replaceAll([const MainRoute()]);
          }
          return value;
        });
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: BlocBuilder<TestBloc, TestState>(
            builder: (context, state) {
              return AppBar(
                leading: IconButton(
                  icon: Icon(state.isFinished ? Icons.arrow_back : Icons.close),
                  onPressed: () {
                    if (state.isFinished) {
                      context.popRoute();
                    } else {
                      showDialog<bool>(
                        context: context,
                        builder: (_) => const AbortTestDialog(),
                      ).then((value) {
                        if (value!) {
                          context.read<TimerBloc>().add(const TimerEvent.stopped());
                          context.router.replaceAll([const MainRoute()]);
                        }
                      });
                    }
                  },
                ),
                title: state.isFinished && state.selectedIndex != null
                    ? Text("Вопрос ${(state.selectedIndex ?? 0) + 1}")
                    : const TestTimer(),
                centerTitle: !state.isFinished,
                actions: state.isFinished
                    ? null
                    : [
                        TextButton(
                          style: const ButtonStyle(
                            foregroundColor: MaterialStatePropertyAll(Colors.white),
                          ),
                          onPressed: () {
                            final hasUnansweredQuestions =
                                state.questions.any((q) => q.isAnsweredCorrectly == null);

                            if (!hasUnansweredQuestions) {
                              context.read<TestBloc>().add(const TestEvent.finished());
                              context.replaceRoute(const TestResultsRoute());
                              return;
                            }

                            showDialog<bool>(
                              context: context,
                              builder: (_) => const FinishTestDialog(),
                            ).then((value) {
                              if (value!) {
                                context.read<TestBloc>().add(const TestEvent.finished());
                                context.replaceRoute(const TestResultsRoute());
                              }
                            });
                          },
                          child: const Text("Завершить"),
                        ),
                      ],
              );
            },
          ),
        ),
        body: BlocBuilder<TestBloc, TestState>(
          buildWhen: (_, current) => !current.isFinished,
          builder: (context, state) {
            if (state.errorMessage != null) {
              return Center(child: Text(state.errorMessage!));
            }

            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Visibility(
                  visible: !state.isFinished,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 48,
                    margin: const EdgeInsets.only(top: 16),
                    child: QuestionMap(),
                  ),
                ),
                Expanded(
                  child: QuestionsPager(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
