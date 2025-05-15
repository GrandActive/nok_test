import 'package:flutter/material.dart';
import 'package:nok_test/styles/app_text_styles.dart';

class TestInfo extends StatelessWidget {
  const TestInfo({
    super.key,
    required this.questionCount,
    required this.correctAnswerCount,
  });

  final int questionCount;
  final int correctAnswerCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Row(
              children: [
                Icon(Icons.alarm),
                SizedBox(width: 8),
                Text("90 минут", style: AppTextStyles.body1),
              ],
            ),
            SizedBox(width: 32),
            Row(
              children: [
                Icon(Icons.help_outline),
                SizedBox(width: 8),
                Text("$questionCount вопросов", style: AppTextStyles.body1),
              ],
            ),
          ],
        ),
        SizedBox(height: 16),
        Text(
          "Для успешного завершения теста необходимо правильно ответить минимум на $correctAnswerCount вопросов",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff6D6D6D),
          ),
        ),
      ],
    );
  }
}
