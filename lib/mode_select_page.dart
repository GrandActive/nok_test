import 'package:flutter/material.dart';
import 'training/ui/training_start_page.dart';

class ModeSelectPage extends StatelessWidget {
  const ModeSelectPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
                          onPressed: () => {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const TrainingStartPage()))
                              },
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
