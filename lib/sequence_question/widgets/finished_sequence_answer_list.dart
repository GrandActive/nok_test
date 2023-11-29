import 'package:flutter/material.dart';
import 'package:nok_test/common/widgets/answer_result.dart';
import 'package:nok_test/sequence_question/widgets/widgets.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

class FinishedSequenceAnswerList extends StatelessWidget {
  const FinishedSequenceAnswerList({
    super.key,
    required this.question,
  });

  final TestSequenceQuestion question;

  PossibleAnswer _getAnswer(int index) {
    return question.source.answers.firstWhere((e) => e.index == index);
  }

  @override
  Widget build(BuildContext context) {
    final items = question.userAnswer ?? question.source.answers.map((e) => e.index);
    final shouldShowCorrectness = question.userAnswer != null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (shouldShowCorrectness) ...[
          AnswerResult(isAnsweredCorrectly: question.isAnsweredCorrectly ?? false),
          const SizedBox(height: 24),
        ],
        ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            ...items.indexed.map(
              (a) {
                final index = a.$1;
                final answerIndex = a.$2;
                final correctAnswerIndex = question.source.correctOrder[index];
                return FinishedSequenceAnswerListItem(
                  answer: _getAnswer(answerIndex),
                  correctAnswer: _getAnswer(correctAnswerIndex),
                  shouldShowCorrectness: shouldShowCorrectness,
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
