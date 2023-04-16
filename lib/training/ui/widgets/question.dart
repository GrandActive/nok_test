import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gip_test/navigation.gr.dart';
import 'package:gip_test/training/bloc/test_bloc.dart';
import 'package:gip_test/training/domain/model/test_question.dart';
import 'package:gip_test/training/ui/widgets/answer_list.dart';

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
          final bloc = context.read<TestBloc>();

          final selectedQuestion = state.questions[state.selectedIndex!];

          Set<int> selectedAnswers;
          if (selectedQuestion.userAnswers.isNotEmpty) {
            selectedAnswers = Set.from(selectedQuestion.userAnswers);
          } else {
            selectedAnswers = Set.from(state.selectedAnswers);
          }

          final isMultipleAnswers = selectedQuestion.source.correctAnswerIndices.length > 1;

          return Column(
            children: [
              Text(question.source.text),
              AnswerList(
                possibleAnswers: selectedQuestion.source.possibleAnswers,
                selectedIndices: selectedAnswers,
                isMultipleAnswers: isMultipleAnswers,
                isAnswered: selectedQuestion.isAnsweredCorrectly != null,
              ),
              FilledButton.tonal(
                onPressed: selectedAnswers.isEmpty
                    ? null
                    : selectedQuestion.isAnsweredCorrectly != null
                        ? state.selectedIndex == state.questions.length - 1
                            ? () {
                                bloc.add(const TestEvent.finished());
                                context.router.replace(const TestResultsRoute());
                              }
                            : () => bloc.add(TestEvent.selected(index: state.selectedIndex! + 1))
                        : () => bloc.add(const TestEvent.answersSent()),
                child: Text(
                  selectedQuestion.isAnsweredCorrectly == null
                      ? "Ответить"
                      : state.selectedIndex == state.questions.length - 1
                          ? "Завершить"
                          : "Далее",
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
