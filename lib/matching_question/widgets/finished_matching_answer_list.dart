import 'package:flutter/material.dart';
import 'package:nok_test/styles/colors.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

class FinishedMatchingAnswerList extends StatelessWidget {
  const FinishedMatchingAnswerList({
    super.key,
    required this.question,
    required this.answer,
  });

  final TestMatchingQuestion question;
  final Map<int, int?> answer;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final q = question.source.questions[index];
        final answerIndex = answer[q.index];
        final answerText = answerIndex == null
            ? "Ответ не выбран"
            : question.source.answers.firstWhere((a) => a.index == answerIndex).text;

        final Color borderColor;
        final answerIsCorrect = question.source.correctMatch[q.index] == answer[q.index];
        if (question.isAnsweredCorrectly == null) {
          borderColor = const Color(0xFF7F7F7F);
        } else if (answerIsCorrect) {
          borderColor = correctAnswerColor;
        } else {
          borderColor = wrongAnswerColor;
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              q.text,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                border: Border.all(color: borderColor, width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  answerText,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            )
          ],
        );
      },
      separatorBuilder: (_, __) => const SizedBox(height: 16),
      itemCount: question.source.questions.length,
    );
  }
}