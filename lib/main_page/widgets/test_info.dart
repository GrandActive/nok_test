import 'package:flutter/material.dart';

class TestInfo extends StatelessWidget {
  const TestInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Время на тест: 90 минут",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        SizedBox(height: 8),
        Text(
          "Количество вопросов: 50",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        SizedBox(height: 8),
        Text(
          "Для успешного завершения теста необходимо правильно ответить минимум на 36 вопросов",
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