import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gip_test/training/bloc/test_bloc.dart';
import 'package:gip_test/training/domain/model/test_question.dart';
import 'package:gip_test/training/ui/pages/test_page/widgets/answer_list.dart';
import 'package:gip_test/training/ui/pages/test_page/widgets/submit_button.dart';

class Question extends StatelessWidget {
  const Question({super.key, required this.question});

  final TestQuestion question;

  @override
  Widget build(BuildContext context) {
    return BlocListener<TestBloc, TestState>(
      listenWhen: (previous, current) => !current.isFinished,
      listener: (context, state) {
        final selectedQuestion = state.questions[state.selectedIndex!];
        if (selectedQuestion.isAnsweredCorrectly != null) {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          if (selectedQuestion.isAnsweredCorrectly!) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Правильно!")));
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Неправильно :(")));
          }
        }
      },
      child: BlocBuilder<TestBloc, TestState>(
        buildWhen: (_, current) => !current.isFinished,
        builder: (context, state) {
          final selectedQuestion = state.questions[state.selectedIndex!];

          Set<int> selectedAnswers;
          if (selectedQuestion.userAnswers.isNotEmpty) {
            selectedAnswers = Set.from(selectedQuestion.userAnswers);
          } else {
            selectedAnswers = Set.from(state.selectedAnswers);
          }

          final isMultipleAnswers = selectedQuestion.source.correctAnswerIds.length > 1;
          final isAnswered = selectedQuestion.isAnsweredCorrectly != null;

          return Column(
            children: [
              Text(question.source.text),
              AnswerList(
                possibleAnswers: selectedQuestion.source.possibleAnswers,
                selectedIndices: selectedAnswers,
                isMultipleAnswers: isMultipleAnswers,
                isActive: !isAnswered && !state.isFinished,
              ),
              SubmitButton(
                isAnswered: isAnswered,
                isLastQuestion: state.selectedIndex == state.questions.length - 1,
                areAnswersSelected: selectedAnswers.isNotEmpty,
                isTestFinished: state.isFinished,
                hasUnansweredQuestions: state.questions.any((q) => q.isAnsweredCorrectly == null),
              ),
            ],
          );
        },
      ),
    );
  }
}
