import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gip_test/navigation.gr.dart';
import 'package:gip_test/training/bloc/test_bloc.dart';

class RestartTestDialog extends StatelessWidget {
  const RestartTestDialog({
    super.key,
  });

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
                context.router.replaceAll([const ModeSelectRoute()]);
              },
              child: const Text("Нет"),
            ),
            const SizedBox(width: 16),
            FilledButton(
              onPressed: () {
                context.read<TestBloc>().add(const TestEvent.started());
                context.router.replace(const TestRoute());
              },
              child: const Text("Да"),
            )
          ],
        )
      ],
    );
  }
}
