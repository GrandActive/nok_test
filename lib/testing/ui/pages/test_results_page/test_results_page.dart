import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gip_test/testing/bloc/test_bloc.dart';
import 'package:gip_test/testing/ui/pages/test_results_page/widgets/restart_test_dialog.dart';
import 'package:gip_test/testing/ui/pages/test_results_page/widgets/test_results_grid.dart';

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

          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Тест пройден на $correctAnswersCount/$totalAnswersCount баллов.\nВы можете еще раз посмотреть вопросы, в которых допустили ошибку.",
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 32),
                const TestResultsGrid(),
                const SizedBox(height: 32),
                RestartTestDialog(mode: state.mode),
              ],
            ),
          );
        },
      ),
    );
  }
}
