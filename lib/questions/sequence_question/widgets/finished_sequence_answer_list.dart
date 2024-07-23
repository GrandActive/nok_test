import 'package:flutter/material.dart';
import 'package:nok_test/common/widgets/answer_result.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

import 'finished_sequence_answer_list_item.dart';

class FinishedSequenceAnswerList extends StatelessWidget {
  const FinishedSequenceAnswerList({
    super.key,
    required this.question,
    required this.showCorrectness,
    required this.showCorrectAnswer,
    required this.showResult,
  });

  final TestSequenceQuestion question;
  final bool showCorrectness;
  final bool showCorrectAnswer;
  final bool showResult;

  PossibleAnswer _getAnswer(int index) {
    return question.source.answers.firstWhere((e) => e.index == index);
  }

  @override
  Widget build(BuildContext context) {
    final items = question.userAnswer ?? question.source.answers;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showResult) ...[
          AnswerResult(isAnsweredCorrectly: question.isAnsweredCorrectly ?? false),
          const SizedBox(height: 24),
        ],
        Column(
          children: [
            ...items.indexed.map(
              (a) {
                final (index, answer) = a;
                final correctAnswerIndex = int.parse(
                    question.source.correctOrder[0].toString().characters.toList()[index]);
                return FinishedSequenceAnswerListItem(
                  answer: answer,
                  correctAnswer: _getAnswer(correctAnswerIndex),
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
