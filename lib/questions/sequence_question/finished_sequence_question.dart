import 'package:flutter/material.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/testing/data/model/question.dart';

import 'widgets/widgets.dart';

class FinishedSequenceQuestion extends StatelessWidget {
  const FinishedSequenceQuestion({
    super.key,
    required this.question,
    required this.selectedAnswers,
    required this.showResult,
    this.isAnsweredCorrectly,
    this.showCorrectAnswer = true,
  });

  final SequenceQuestion question;
  final List<PossibleAnswer>? selectedAnswers;
  final bool? isAnsweredCorrectly;
  final bool showCorrectAnswer;
  final bool showResult;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 16, top: 24, right: 16, bottom: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question.title,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 24),
          FinishedSequenceAnswerList(
            question: question,
            showCorrectness: selectedAnswers != null,
            showResult: showResult,
            showCorrectAnswer: showCorrectAnswer,
            isAnsweredCorrectly: isAnsweredCorrectly,
            selectedAnswers: selectedAnswers,
          ),
        ],
      ),
    );
  }
}
