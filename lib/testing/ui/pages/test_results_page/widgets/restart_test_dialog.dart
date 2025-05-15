import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/navigation.dart';
import 'package:nok_test/specializations/bloc/qualification_select_bloc/qualification_select_bloc.dart';
import 'package:nok_test/styles/colors.dart';
import 'package:nok_test/testing/bloc/testing_bloc/testing_bloc.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';

class RestartTestDialog extends StatelessWidget {
  const RestartTestDialog({
    super.key,
    required this.mode,
  });

  final TestMode mode;

  @override
  Widget build(BuildContext context) {
    final qualification = context.watch<QualificationSelectBloc>().state.selectedQualification!;

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
                side: WidgetStatePropertyAll(BorderSide(color: primaryColor)),
                minimumSize: WidgetStatePropertyAll(Size(156, 41)),
              ),
              child: const Text("Нет"),
            ),
            const SizedBox(width: 16),
            FilledButton(
              onPressed: () {
                context
                    .read<TestingBloc>()
                    .add(TestingEvent.started(mode: mode, qualification: qualification));
                context.router.replace(const TestingRoute());
              },
              style: const ButtonStyle(
                minimumSize: WidgetStatePropertyAll(Size(156, 41)),
              ),
              child: const Text("Да"),
            )
          ],
        )
      ],
    );
  }
}
