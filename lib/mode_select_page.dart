import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gip_test/navigation.gr.dart';

class ModeSelectPage extends StatelessWidget {
  const ModeSelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ГИП"),
      ),
      body: Column(
        children: [
          const Text('Название (заголовок)'),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Выберите режим'),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FilledButton.tonal(
                          onPressed: () =>
                              context.router.push(const TrainingStartRoute()),
                          child: const Text('Тренировка')),
                      const SizedBox(width: 16),
                      FilledButton.tonal(
                          onPressed: () {}, child: const Text('Экзамен'))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
