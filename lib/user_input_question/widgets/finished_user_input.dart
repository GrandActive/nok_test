import 'package:flutter/material.dart';
import 'package:nok_test/styles/colors.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

class FinishedUserInput extends StatelessWidget {
  const FinishedUserInput({
    super.key,
    required this.question,
  });

  final TestUserInputQuestion question;

  Color get _borderColor {
    if (question.isAnsweredCorrectly == null) {
      return const Color(0xFF7F7F7F);
    } else if (question.isAnsweredCorrectly!) {
      return correctAnswerColor;
    } else {
      return wrongAnswerColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController(text: question.userAnswer),
      enabled: false,
      style: const TextStyle(color: Color(0xFF464646)),
      decoration: InputDecoration(
        isDense: true,
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _borderColor),
        ),
        helperText: question.isAnsweredCorrectly!
            ? null
            : 'Правильный ответ: ${question.source.correctAnswer}',
        helperMaxLines: 3,
        helperStyle: const TextStyle(color: Color(0xFF464646), fontSize: 14),
      ),
    );
  }
}
