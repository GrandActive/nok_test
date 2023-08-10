import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/testing/bloc/question_bloc/question_bloc.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

class MatchingQuestion extends StatelessWidget {
  const MatchingQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionBloc, QuestionState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox.shrink(),
          inProgress: (state) {
            final question = state.question as TestMatchingQuestion;
            final selectedAnswers = state.selectedAnswers as Map<int, int?>;
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(question.source.text),
                  for (final q in question.source.questions)
                    QuestionAnswerPair(
                      answers: question.source.answers,
                      question: q,
                      selectedAnswers: selectedAnswers,
                    ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class QuestionAnswerPair extends StatelessWidget {
  const QuestionAnswerPair({
    super.key,
    required this.question,
    required this.answers,
    required this.selectedAnswers,
  });

  final PossibleAnswer question;
  final List<PossibleAnswer> answers;
  final Map<int, int?> selectedAnswers;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(question.text),
        DropdownButton(
          isExpanded: true,
          underline: null,
          value:
              answers.firstWhereOrNull((answer) => answer.index == selectedAnswers[question.index]),
          items: answers
              .map((answer) => DropdownMenuItem(value: answer, child: Text(answer.text)))
              .toList(),
          onChanged: (value) {
            final answer = Map<int, int?>.from(selectedAnswers);
            answer[question.index] = value?.index;
            context.read<QuestionBloc>().add(QuestionEvent.answerSelected(answer: answer));
          },
        ),
      ],
    );
  }
}

extension<T> on Iterable<T> {
  T? firstWhereOrNull(bool Function(T element) test) {
    final list = where(test);
    return list.isEmpty ? null : list.first;
  }
}
