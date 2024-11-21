import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/common/widgets/app_filled_button.dart';
import 'package:nok_test/common/widgets/app_outlined_button.dart';
import 'package:nok_test/main_page/widgets/widgets.dart';
import 'package:nok_test/navigation.dart';
import 'package:nok_test/premium/bloc/premium_bloc.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isPaid = context.watch<PremiumBloc>().state.maybeWhen(
          orElse: () => false,
          enabled: () => true,
        );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Тренажер по тестам НОК"),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outlined),
            onPressed: () => context.router.push(const AboutRoute()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            children: [
              const PremiumStatus(),
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
                    AppOutlinedButton(
                      onPressed: () => context.router.push(TestIntroRoute(mode: TestMode.training)),
                      child: const Text('Тренировка'),
                    ),
                    const SizedBox(width: 16),
                    AppFilledButton(
                      onPressed: () => context.router.push(TestIntroRoute(mode: TestMode.exam)),
                      child: const Text("Экзамен"),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {
                    context.router.push(QuestionListRoute());
                  },
                  child: const Text('Список всех вопросов'),
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
