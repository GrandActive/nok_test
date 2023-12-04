import 'package:flutter/material.dart';
import 'package:nok_test/matching_question/widgets/widgets.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

class FinishedMatchingQuestion extends StatelessWidget {
  const FinishedMatchingQuestion({
    super.key,
    required this.question,
    required this.mode,
  });

  final TestMatchingQuestion question;
  final TestMode mode;

  @override
  Widget build(BuildContext context) {
    final answer = question.userAnswer ?? {};

    final answerIsNotEmpty = question.userAnswer?.values.any((e) => e != null) ?? false;

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
            FinishedMatchingAnswerList(
              question: question,
              answer: answer,
              showCorrectness: mode == TestMode.training && answerIsNotEmpty,
              showResult: answerIsNotEmpty,
            ),
          ],
        ),
      ),
    );
  }
}
