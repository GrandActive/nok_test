import 'package:flutter/material.dart';
import 'package:nok_test/styles/colors.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

class FinishedMatchingQuestion extends StatelessWidget {
  const FinishedMatchingQuestion({
    super.key,
    required this.question,
  });

  final TestMatchingQuestion question;

  @override
  Widget build(BuildContext context) {
    final answer = question.userAnswer ?? {};

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 36),
        child: Column(
          children: [
            Text(question.source.text),
            const SizedBox(height: 40),
            ListView.separated(
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
                    Text(q.text),
                    const SizedBox(height: 8),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(4)),
                        border: Border.all(color: borderColor, width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(answerText),
                      ),
                    )
                  ],
                );
              },
              separatorBuilder: (_, __) => const SizedBox(height: 16),
              itemCount: question.source.questions.length,
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
