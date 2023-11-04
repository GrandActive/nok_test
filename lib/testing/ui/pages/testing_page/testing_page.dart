import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/navigation.dart';
import 'package:nok_test/testing/bloc/testing_bloc/testing_bloc.dart';
import 'package:nok_test/testing/bloc/timer_bloc/timer_bloc.dart';
import 'package:nok_test/testing/ui/dialogs/abort_test_dialog.dart';
import 'package:nok_test/testing/ui/dialogs/finish_test_dialog.dart';
import 'package:nok_test/testing/ui/pages/testing_page/widgets/widgets.dart';
import 'package:nok_test/testing/ui/pages/update_needed_page.dart';

@RoutePage()
class TestingPage extends StatelessWidget {
  const TestingPage({super.key});

  Future<bool?> showAbortTestDialog(BuildContext context) {
    return showDialog<bool>(
      context: context,
      builder: (_) => const AbortTestDialog(),
    );
  }

  void _hideKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<TestingBloc, TestingState>(
          listener: (context, state) {
            if (state.needFinishConfirmation) {
              showDialog<bool>(
                context: context,
                builder: (_) => const FinishTestDialog(),
              ).then((shouldFinish) => context
                  .read<TestingBloc>()
                  .add(TestingEvent.gotFinishConfirmationAnswer(confirm: shouldFinish ?? false)));
            }
          },
        ),
        BlocListener<TestingBloc, TestingState>(
          listenWhen: (previous, current) => previous.selectedIndex != current.selectedIndex,
          listener: (context, state) => _hideKeyboard(),
        ),
      ],
      child: WillPopScope(
        onWillPop: () => showAbortTestDialog(context).then((shouldPop) => shouldPop ?? false),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                showAbortTestDialog(context).then((shouldAbort) {
                  if (shouldAbort ?? false) {
                    context.read<TimerBloc>().add(const TimerEvent.stopped());
                    context.router.replaceAll([const MainRoute()]);
                  }
                });
              },
            ),
            title: const TestTimer(),
            centerTitle: true,
            actions: [
              BlocBuilder<TestingBloc, TestingState>(
                builder: (context, state) => Visibility(
                  visible: !state.isLoading && !state.isUpdateNeeded,
                  child: TextButton(
                    style: const ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                    ),
                    onPressed: () {
                      context.read<TestingBloc>().add(const TestingEvent.finishRequested());
                    },
                    child: const Text("Завершить"),
                  ),
                ),
              ),
            ],
          ),
          body: BlocBuilder<TestingBloc, TestingState>(
            builder: (context, state) {
              if (state.isUpdateNeeded) {
                return const UpdateNeededPage();
              }

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
                    margin: const EdgeInsets.only(top: 16),
                    child: QuestionMap(),
                  ),
                  Expanded(
                    child: QuestionsPager(),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
