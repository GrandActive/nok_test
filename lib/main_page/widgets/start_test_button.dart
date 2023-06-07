import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nok_test/navigation.gr.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';

class StartTestButton extends StatelessWidget {
  const StartTestButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () => context.router.push(
        TestWrapperRoute(
          children: [
            TestRoute(mode: TestMode.exam),
          ],
        ),
      ),
      style: const ButtonStyle(
        minimumSize: MaterialStatePropertyAll(Size(156, 41)),
      ),
      child: const Text("Начать тест"),
    );
  }
}
