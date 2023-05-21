import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class FinishTestDialog extends StatelessWidget {
  const FinishTestDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      surfaceTintColor: Colors.white,
      title: const Text("Завершить тест?", style: TextStyle(color: Color(0xff464646))),
      content:
          const Text("Вы ответили не на все вопросы.", style: TextStyle(color: Color(0xff464646))),
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
          child: const Text("Завершить"),
        )
      ],
    );
  }
}
