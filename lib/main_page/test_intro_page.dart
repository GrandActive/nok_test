import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nok_test/navigation.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';

@RoutePage()
class TestIntroPage extends StatelessWidget {
  const TestIntroPage({
    super.key,
    required this.mode,
  });

  final TestMode mode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: switch (mode) {
          TestMode.training => const Text('Тренировочный тест'),
          TestMode.exam => const Text('Экзамен'),
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Время на тест: 90 минут",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 8),
          const Text(
            "Количество вопросов: 50",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 8),
          const Text(
            "Для успешного завершения теста необходимо правильно ответить минимум на 36 вопросов",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff6D6D6D),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          FilledButton(
            onPressed: () => context.router.push(
              TestWrapperRoute(children: const [TestingRoute()], mode: mode),
            ),
            style: const ButtonStyle(
              minimumSize: MaterialStatePropertyAll(Size(156, 41)),
            ),
            child: const Text("Начать тест"),
          ),
        ],
      ),
    );
  }
}
