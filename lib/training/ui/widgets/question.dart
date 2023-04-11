import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gip_test/navigation.gr.dart';
import 'package:gip_test/training/bloc/test_bloc.dart';
import 'package:gip_test/training/domain/model/test_question.dart';

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

          int? selectedAnswer;
          if (selectedQuestion.userAnswers != null) {
            selectedAnswer = selectedQuestion.userAnswers!.first;
          } else {
            selectedAnswer = state.selectedAnswers?.first;
          }

          return Column(
            children: [
              Text(question.source.text),
              AnswerList(
                possibleAnswers: selectedQuestion.source.possibleAnswers,
                selectedIndex: selectedAnswer,
                onChanged: selectedQuestion.isAnsweredCorrectly != null
                    ? null
                    : (index) => bloc
                        .add(TestEvent.answersSelected(answers: index == null ? null : {index})),
              ),
              FilledButton.tonal(
                onPressed: selectedAnswer == null
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

class AnswerList extends StatelessWidget {
  const AnswerList({
    super.key,
    required this.possibleAnswers,
    required this.selectedIndex,
    required this.onChanged,
  });

  final List<String> possibleAnswers;
  final int? selectedIndex;
  final void Function(int?)? onChanged;

  @override
  Widget build(BuildContext context) {
    final optionsIndexes = List.generate(
      possibleAnswers.length,
      (index) => index,
    );

    return Column(
      children: [
        ...optionsIndexes.map(
          (index) => ListTile(
            leading: Radio(value: index, groupValue: selectedIndex, onChanged: onChanged),
            title: Text(possibleAnswers[index]),
          ),
        ),
      ],
    );
  }
}
