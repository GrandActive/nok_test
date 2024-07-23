import 'package:flutter/material.dart';
import 'package:nok_test/styles/colors.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';

class FinishedQuestionAnswerPair extends StatelessWidget {
  const FinishedQuestionAnswerPair({
    super.key,
    required this.question,
    required this.answer,
    required this.correctAnswer,
    required this.showCorrectness,
    required this.showCorrectAnswer,
  });

  final PossibleAnswer question;
  final PossibleAnswer? answer;
  final PossibleAnswer? correctAnswer;
  final bool showCorrectness;
  final bool showCorrectAnswer;

  bool get isAnsweredCorrectly => answer == correctAnswer;

  Color get borderColor => showCorrectness
      ? isAnsweredCorrectly
          ? correctAnswerColor
          : wrongAnswerColor
      : const Color(0xFF7F7F7F);

  final emptyAnswerText = "Пустое значение";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          question.text,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            border: Border.all(color: borderColor, width: 1),
          ),
          padding: const EdgeInsets.all(16),
          child: Text(
            answer?.text ?? emptyAnswerText,
            style: const TextStyle(fontSize: 16),
          ),
        ),
        if (showCorrectAnswer && !isAnsweredCorrectly) ...[
          const SizedBox(height: 4),
          Text('Правильный ответ: ${correctAnswer?.text ?? emptyAnswerText}'),
        ]
      ],
    );
  }
}
