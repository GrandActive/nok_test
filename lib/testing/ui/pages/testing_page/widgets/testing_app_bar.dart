import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/navigation.dart';
import 'package:nok_test/testing/bloc/testing_bloc/testing_bloc.dart';
import 'package:nok_test/testing/bloc/timer_bloc/timer_bloc.dart';
import 'package:nok_test/testing/ui/dialogs/abort_test_dialog.dart';

import 'test_timer.dart';

class TestingAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TestingAppBar({super.key});

  Future<bool?> _showAbortTestDialog(BuildContext context) {
    return showDialog<bool>(
      context: context,
      builder: (_) => const AbortTestDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {
          _showAbortTestDialog(context).then((shouldAbort) {
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
            child: const FinishTestButton(),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class FinishTestButton extends StatelessWidget {
  const FinishTestButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
        foregroundColor: MaterialStatePropertyAll(Colors.white),
      ),
      onPressed: () {
        context.read<TestingBloc>().add(const TestingEvent.finishRequested());
      },
      child: const Text("Завершить"),
    );
  }
}
