import 'package:flutter/material.dart';
import 'package:nok_test/styles/colors.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';

class FinishedSequenceAnswerListItem extends StatelessWidget {
  const FinishedSequenceAnswerListItem({
    super.key,
    required this.answer,
    required this.correctAnswer,
    required this.showCorrectness,
    required this.showCorrectAnswer,
  });

  final PossibleAnswer answer;
  final PossibleAnswer correctAnswer;
  final bool showCorrectness;
  final bool showCorrectAnswer;

  bool get isAnswerCorrect => answer == correctAnswer;

  @override
  Widget build(BuildContext context) {
    Color borderColor = showCorrectness
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
          if (showCorrectAnswer && !isAnswerCorrect) ...[
            const SizedBox(height: 4),
            Text('Правильный ответ: ${correctAnswer.text}'),
          ]
        ],
      ),
    );
  }
}
