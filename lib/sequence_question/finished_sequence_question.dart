import 'package:flutter/material.dart';
import 'package:nok_test/sequence_question/widgets/widgets.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

class FinishedSequenceQuestion extends StatelessWidget {
  const FinishedSequenceQuestion({
    super.key,
    required this.question,
    required this.mode,
  });

  final TestSequenceQuestion question;
  final TestMode mode;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(left: 16, top: 24, right: 16, bottom: 36),
      children: [
        Text(
          question.source.title,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 24),
        FinishedSequenceAnswerList(
          question: question,
          showCorrectness: question.userAnswer != null,
          showResult: question.userAnswer != null,
          showCorrectAnswer: mode == TestMode.training && question.userAnswer != null,
        ),
      ],
    );
  }
}
