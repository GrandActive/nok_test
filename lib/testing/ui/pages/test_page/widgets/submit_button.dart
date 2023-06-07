import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/navigation.gr.dart';
import 'package:nok_test/testing/bloc/test_bloc.dart';
import 'package:nok_test/testing/ui/dialogs/finish_test_dialog.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.areAnswersSelected,
    required this.isLastQuestion,
    required this.isTestFinished,
    required this.hasUnansweredQuestions,
  });

  final bool areAnswersSelected;
  final bool isLastQuestion;
  final bool isTestFinished;
  final bool hasUnansweredQuestions;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TestBloc>();

    void finishTest() {
      if (!hasUnansweredQuestions) {
        context.read<TestBloc>().add(const TestEvent.finished());
        context.replaceRoute(const TestResultsRoute());
        return;
      }

      showDialog<bool>(
        context: context,
        builder: (_) => const FinishTestDialog(),
      ).then((value) {
        if (value!) {
          context.read<TestBloc>().add(const TestEvent.finished());
          context.replaceRoute(const TestResultsRoute());
        }
      });
    }

    void selectNextQuestion() {
      bloc.add(const TestEvent.selectNextQuestion());
    }

    return Visibility(
      visible: !isTestFinished,
      child: FilledButton(
        onPressed: !areAnswersSelected
            ? null
            : !isLastQuestion
                ? selectNextQuestion
                : finishTest,
        style: const ButtonStyle(
          minimumSize: MaterialStatePropertyAll(Size(156, 41)),
        ),
        child: Text(!isLastQuestion ? "Далее" : "Завершить"),
      ),
    );
  }
}
