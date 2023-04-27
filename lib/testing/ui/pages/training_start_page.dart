import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gip_test/navigation.gr.dart';
import 'package:gip_test/testing/domain/model/test_mode.dart';

class TrainingStartPage extends StatelessWidget {
  const TrainingStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Тренировочный тест')),
      body: Column(
        children: [
          const Text('Пройдите тренировочный тест и узнайте свой уровень знаний!'),
          FilledButton.tonal(
            child: const Text('Старт'),
            onPressed: () => context.router
                .push(TestWrapperRoute(children: [TestRoute(mode: TestMode.training)])),
          )
        ],
      ),
    );
  }
}
