import 'package:flutter/material.dart';
import 'package:nok_test/common/widgets/answer_result.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/testing/data/model/question.dart';

import 'finished_sequence_answer_list_item.dart';

class FinishedSequenceAnswerList extends StatelessWidget {
  const FinishedSequenceAnswerList({
    super.key,
    required this.question,
    required this.showCorrectness,
    required this.showCorrectAnswer,
    required this.showResult,
    required this.selectedAnswers,
    required this.isAnsweredCorrectly,
  });

  final SequenceQuestion question;
  final bool showCorrectness;
  final bool showCorrectAnswer;
  final bool showResult;
  final List<PossibleAnswer>? selectedAnswers;
  final bool? isAnsweredCorrectly;

  @override
  Widget build(BuildContext context) {
    final items = selectedAnswers ?? question.answers;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showResult) ...[
          AnswerResult(isAnsweredCorrectly: isAnsweredCorrectly ?? false),
          const SizedBox(height: 24),
        ],
        Column(
          children: [
            ...items.indexed.map(
              (a) {
                final (index, answer) = a;
                return FinishedSequenceAnswerListItem(
                  answer: answer,
                  correctAnswer: question.correctAnswers[index],
                  showCorrectness: showCorrectness,
                  showCorrectAnswer: showCorrectAnswer,
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
