import 'package:flutter/material.dart';
import 'package:nok_test/styles/colors.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';

class FinishedSequenceAnswerListItem extends StatelessWidget {
  const FinishedSequenceAnswerListItem({
    super.key,
    required this.answer,
    required this.correctAnswer,
    required this.shouldShowCorrectness,
  });

  final PossibleAnswer answer;
  final PossibleAnswer correctAnswer;
  final bool shouldShowCorrectness;

  bool get isAnswerCorrect => answer == correctAnswer;

  @override
  Widget build(BuildContext context) {
    Color borderColor = shouldShowCorrectness
        ? isAnswerCorrect
            ? correctAnswerColor
            : wrongAnswerColor
        : const Color(0xFFDBE9F9);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            child: ListTile(
              dense: true,
              title: Text(answer.text, style: const TextStyle(fontSize: 16)),
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                side: BorderSide(color: borderColor),
              ),
            ),
          ),
          if (shouldShowCorrectness && !isAnswerCorrect) ...[
            const SizedBox(height: 4),
            Text('Правильный ответ: ${correctAnswer.text}'),
          ]
        ],
      ),
    );
  }
}
