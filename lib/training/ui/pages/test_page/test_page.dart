import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gip_test/navigation.gr.dart';
import 'package:gip_test/training/bloc/test_bloc.dart';
import 'package:gip_test/training/ui/pages/abort_test_dialog.dart';
import 'package:gip_test/training/ui/pages/finish_test_dialog.dart';
import 'package:gip_test/training/ui/pages/test_page/widgets/questions_pager.dart';
import 'package:gip_test/training/ui/pages/test_page/widgets/question_map.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

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
            context.router.replaceAll([const ModeSelectRoute()]);
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
                          context.router.replaceAll([const ModeSelectRoute()]);
                        }
                      });
                    }
                  },
                ),
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
                Container(
                  alignment: Alignment.centerLeft,
                  height: 48,
                  child: const QuestionMap(),
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
