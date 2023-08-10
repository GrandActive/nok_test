import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/navigation.gr.dart';
import 'package:nok_test/styles/colors.dart';
import 'package:nok_test/testing/bloc/test_bloc/test_bloc.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';

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
        const Text("Пройти тест заново?", style: TextStyle(fontSize: 16)),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                context.router.replaceAll([const MainRoute()]);
              },
              style: const ButtonStyle(
                side: MaterialStatePropertyAll(BorderSide(color: primaryColor)),
                minimumSize: MaterialStatePropertyAll(Size(156, 41)),
              ),
              child: const Text("Нет"),
            ),
            const SizedBox(width: 16),
            FilledButton(
              onPressed: () {
                context.read<TestBloc>().add(TestEvent.started(mode: mode));
                context.router.replace(TestRoute(mode: mode));
              },
              style: const ButtonStyle(
                minimumSize: MaterialStatePropertyAll(Size(156, 41)),
              ),
              child: const Text("Да"),
            )
          ],
        )
      ],
    );
  }
}
