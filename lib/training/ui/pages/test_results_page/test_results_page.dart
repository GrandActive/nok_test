import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gip_test/navigation.gr.dart';
import 'package:gip_test/training/bloc/test_bloc.dart';
import 'package:gip_test/training/ui/pages/test_page/widgets/question_map_item.dart';

class TestResultsPage extends StatelessWidget {
  const TestResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Результат")),
      body: BlocBuilder<TestBloc, TestState>(
        builder: (context, state) {
          final correctAnswersCount =
              state.questions.where((question) => question.isAnsweredCorrectly ?? false).length;
          final totalAnswersCount = state.questions.length;

          return Column(
            children: [
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                    "Тест пройден на $correctAnswersCount/$totalAnswersCount баллов.\nВы можете еще раз посмотреть вопросы, в которых допустили ошибку.",
                    textAlign: TextAlign.center),
              ),
              const SizedBox(height: 32),
              const TestResultsGrid(),
              const SizedBox(height: 32),
              const RestartTestDialog(),
            ],
          );
        },
      ),
    );
  }
}

class TestResultsGrid extends StatelessWidget {
  const TestResultsGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TestBloc, TestState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 328),
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 8,
              runSpacing: 8,
              children: List.generate(
                state.questions.length,
                (index) => QuestionMapItem(
                  index: index,
                  isSelected: state.selectedIndex == index && !state.isFinished,
                  isAnsweredCorrectly: state.questions[index].isAnsweredCorrectly,
                  onPressed: () {
                    context.read<TestBloc>().add(TestEvent.selected(index: index));
                    context.router.push(const TestRoute());
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class RestartTestDialog extends StatelessWidget {
  const RestartTestDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Пройти заново?"),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                context.router.replaceAll([const ModeSelectRoute()]);
              },
              child: const Text("Нет"),
            ),
            const SizedBox(width: 16),
            FilledButton(
              onPressed: () {
                context.read<TestBloc>().add(const TestEvent.started());
                context.router.replace(const TestRoute());
              },
              child: const Text("Да"),
            )
          ],
        )
      ],
    );
  }
}
