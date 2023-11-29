import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nok_test/navigation.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';

class StartExamButton extends StatelessWidget {
  const StartExamButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () => context.router.push(
        TestWrapperRoute(
          mode: TestMode.exam,
          children: const [TestingRoute()],
        ),
      ),
      style: const ButtonStyle(
        minimumSize: MaterialStatePropertyAll(Size(156, 41)),
      ),
      child: const Text("Начать тест"),
    );
  }
}
