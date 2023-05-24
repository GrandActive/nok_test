import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AbortTestDialog extends StatelessWidget {
  const AbortTestDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      surfaceTintColor: Colors.white,
      title:
          const Text("Выйти из теста?", style: TextStyle(color: Color(0xff464646), fontSize: 20)),
      content: const Text("Результат не сохранится.",
          style: TextStyle(color: Color(0xff464646), fontSize: 16)),
      actions: [
        TextButton(
          onPressed: () => context.popRoute(false),
          child: const Text("Отмена"),
        ),
        TextButton(
          onPressed: () => context.popRoute(true),
          style: const ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(Colors.red),
          ),
          child: const Text("Выйти"),
        )
      ],
    );
  }
}
