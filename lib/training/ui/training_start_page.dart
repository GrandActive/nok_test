import 'package:flutter/material.dart';
import 'package:gip_test/training/ui/question_page.dart';

class TrainingStartPage extends StatelessWidget {
  const TrainingStartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Тренировочный тест')),
      body: Column(
        children: [
          const Text(
              'Пройдите тренировочный тест и узнайте свой уровень знаний!'),
          FilledButton.tonal(
              onPressed: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const QuestionPage()))
                  },
              child: const Text('Старт'))
        ],
      ),
    );
  }
}
