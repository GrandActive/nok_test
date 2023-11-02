import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nok_test/main_page/widgets/widgets.dart';
import 'package:nok_test/navigation.dart';
import 'package:nok_test/paid_status.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Тренажер по тестам НОК")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            children: [
              const SubjectSelect(),
              const SizedBox(height: 24),
              const TopicSelect(),
              const SizedBox(height: 32),
              if (isPaid) ...[
                const Text(
                  'Выберите режим прохождения теста',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () => context.router.push(TestIntroRoute(mode: TestMode.training)),
                      child: const Text('Тренировка'),
                    ),
                    const SizedBox(width: 16),
                    FilledButton(
                      onPressed: () => context.router.push(TestIntroRoute(mode: TestMode.exam)),
                      style: const ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(Size(156, 41)),
                      ),
                      child: const Text("Экзамен"),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                TextButton(
                  onPressed: () {},
                  child: const Text('Посмотреть все вопросы'),
                ),
              ] else ...[
                const TestInfo(),
                const SizedBox(height: 40),
                const StartExamButton(),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
