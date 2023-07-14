import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/testing/bloc/test_bloc.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/selection_question.dart';

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TestBloc, TestState>(
      buildWhen: (_, current) => !current.isFinished,
      builder: (context, state) {
        final selectedQuestion = state.questions[state.selectedIndex!];

        switch (selectedQuestion) {
          case TestSelectionQuestion():
            return SelectionQuestion(
              question: selectedQuestion,
              selectedAnswers: state.selectedAnswers,
              isFinished: state.isFinished,
              isLastQuestion: state.selectedIndex == state.questions.length - 1,
              hasUnansweredQuestions: state.questions.any((q) => q.isAnsweredCorrectly == null),
            );
          default:
            return const Center(
              child: Text("(пока) Неподдерживаемый тип вопроса"),
            );
        }
      },
    );
  }
}
