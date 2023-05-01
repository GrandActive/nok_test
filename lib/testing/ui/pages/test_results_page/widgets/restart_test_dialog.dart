import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gip_test/navigation.gr.dart';
import 'package:gip_test/testing/bloc/test_bloc.dart';
import 'package:gip_test/testing/domain/model/test_mode.dart';

class RestartTestDialog extends StatelessWidget {
  const RestartTestDialog({
    super.key,
    required this.mode,
  });

  final TestMode mode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Пройти заново?"),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                context.router.replaceAll([const MainRoute()]);
              },
              child: const Text("Нет"),
            ),
            const SizedBox(width: 16),
            FilledButton(
              onPressed: () {
                context.read<TestBloc>().add(TestEvent.started(mode: mode));
                context.router.replace(TestRoute(mode: mode));
              },
              child: const Text("Да"),
            )
          ],
        )
      ],
    );
  }
}
