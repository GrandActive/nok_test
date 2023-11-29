import 'package:flutter/material.dart';
import 'package:nok_test/matching_question/widgets/widgets.dart';
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
        padding: const EdgeInsets.only(left: 16, top: 24, right: 16, bottom: 36),
        child: Column(
          children: [
            Text(
              question.source.text,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            FinishedMatchingAnswerList(question: question, answer: answer),
          ],
        ),
      ),
    );
  }
}
