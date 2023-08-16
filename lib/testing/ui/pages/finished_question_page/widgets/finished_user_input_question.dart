import 'package:flutter/material.dart';
import 'package:nok_test/styles/colors.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

class FinishedUserInputQuestion extends StatelessWidget {
  const FinishedUserInputQuestion({
    super.key,
    required this.question,
  });

  final TestUserInputQuestion question;

  @override
  Widget build(BuildContext context) {
    Color userAnswerBorderColor;
    if (question.isAnsweredCorrectly == null) {
      userAnswerBorderColor = const Color(0xFF7F7F7F);
    } else if (question.isAnsweredCorrectly!) {
      userAnswerBorderColor = correctAnswerColor;
    } else {
      userAnswerBorderColor = wrongAnswerColor;
    }

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 36, top: 24),
        child: Column(
          children: [
            Text(
              "${question.source.title}:",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              question.source.text,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 40),
            TextField(
              controller: TextEditingController(text: question.userAnswer),
              enabled: false,
              style: const TextStyle(color: Color(0xFF464646)),
              decoration: InputDecoration(
                isDense: true,
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: userAnswerBorderColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
