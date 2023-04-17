import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gip_test/navigation.gr.dart';
import 'package:gip_test/training/bloc/test_bloc.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.areAnswersSelected,
    required this.isAnswered,
    required this.isLastQuestion,
    required this.isTestFinished,
  });

  final bool areAnswersSelected;
  final bool isAnswered;
  final bool isLastQuestion;
  final bool isTestFinished;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TestBloc>();

    void finishTest() {
      bloc.add(const TestEvent.finished());
      context.router.replace(const TestResultsRoute());
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
