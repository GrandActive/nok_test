import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gip_test/navigation.gr.dart';
import 'package:gip_test/testing/bloc/test_bloc.dart';
import 'package:gip_test/testing/ui/dialogs/finish_test_dialog.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.areAnswersSelected,
    required this.isAnswered,
    required this.isLastQuestion,
    required this.isTestFinished,
    required this.hasUnansweredQuestions,
  });

  final bool areAnswersSelected;
  final bool isAnswered;
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

    void submitAnswers() {
      bloc.add(const TestEvent.answersSent());
    }

    return Visibility(
      visible: !isTestFinished,
      child: FilledButton(
        onPressed: !areAnswersSelected
            ? null
            : !isAnswered
                ? submitAnswers
                : !isLastQuestion
                    ? selectNextQuestion
                    : finishTest,
        child: Text(
          !isAnswered
              ? "Ответить"
              : !isLastQuestion
                  ? "Далее"
                  : "Завершить",
        ),
      ),
    );
  }
}
