import 'package:flutter/material.dart';
import 'package:nok_test/common/widgets/answer_result.dart';
import 'package:nok_test/sequence_question/widgets/widgets.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

class FinishedSequenceAnswerList extends StatelessWidget {
  const FinishedSequenceAnswerList({
    super.key,
    required this.question,
    required this.showCorrectness,
    required this.showResult,
  });

  final TestSequenceQuestion question;
  final bool showCorrectness;
  final bool showResult;

  PossibleAnswer _getAnswer(int index) {
    return question.source.answers.firstWhere((e) => e.index == index);
  }

  @override
  Widget build(BuildContext context) {
    final items = question.userAnswer ?? question.source.answers.map((e) => e.index);

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
                final index = a.$1;
                final answerIndex = a.$2;
                final correctAnswerIndex = question.source.correctOrder[index];
                return FinishedSequenceAnswerListItem(
                  answer: _getAnswer(answerIndex),
                  correctAnswer: _getAnswer(correctAnswerIndex),
                  shouldShowCorrectness: showCorrectness,
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
