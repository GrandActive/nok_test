import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/testing/bloc/testing_bloc/testing_bloc.dart';
import 'package:nok_test/testing/ui/pages/test_results_page/widgets/restart_test_dialog.dart';
import 'package:nok_test/testing/ui/pages/test_results_page/widgets/result_message.dart';
import 'package:nok_test/testing/ui/pages/test_results_page/widgets/results_info.dart';
import 'package:nok_test/testing/ui/pages/test_results_page/widgets/test_results_grid.dart';

@RoutePage()
class TestResultsPage extends StatelessWidget {
  const TestResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Результат")),
      body: BlocBuilder<TestingBloc, TestingState>(
        builder: (context, state) {
          final correctAnswersCount =
              state.questions.where((question) => question.isAnsweredCorrectly ?? false).length;

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: Column(
                children: [
                  ResultMessage(isTestPassed: correctAnswersCount >= 36),
                  const SizedBox(height: 24),
                  ResultsInfo(correctAnswersCount: correctAnswersCount),
                  const SizedBox(height: 32),
                  const TestResultsGrid(),
                  const SizedBox(height: 32),
                  RestartTestDialog(mode: state.mode),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
