import 'package:flutter/material.dart';
import 'package:nok_test/testing/data/model/question.dart';

import 'widgets/widgets.dart';

class FinishedMatchingQuestion extends StatelessWidget {
  const FinishedMatchingQuestion({
    super.key,
    required this.question,
    required this.selectedAnswer,
    this.showResult,
    this.showCorrectAnswer = true,
  });

  final MatchingQuestion question;
  final bool showCorrectAnswer;
  final Map<int, List<int>?>? selectedAnswer;
  final bool? showResult;

  @override
  Widget build(BuildContext context) {
    final answer = selectedAnswer ?? {};

    final answerIsNotEmpty = selectedAnswer?.values.any((e) => e != null) ?? false;

    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 16, top: 24, right: 16, bottom: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question.text,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 24),
          FinishedMatchingAnswerList(
            question: question,
            answer: answer,
            showCorrectness: answerIsNotEmpty,
            showCorrectAnswer: showCorrectAnswer,
            showResult: showResult ?? answerIsNotEmpty,
          ),
        ],
      ),
    );
  }
}
