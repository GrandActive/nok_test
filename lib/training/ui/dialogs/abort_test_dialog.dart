import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AbortTestDialog extends StatelessWidget {
  const AbortTestDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Прервать тест?"),
      content: const Text("Результат не сохранится"),
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
