import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gip_test/navigation.gr.dart';
import 'package:gip_test/training/domain/model/test_mode.dart';

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
        backgroundColor: MaterialStatePropertyAll(Color(0xff277ADB)),
      ),
      child: const Text("Начать тест"),
    );
  }
}
