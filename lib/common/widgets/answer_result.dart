import 'package:flutter/material.dart';
import 'package:nok_test/styles/colors.dart';

class AnswerResult extends StatelessWidget {
  const AnswerResult({
    super.key,
    required this.isAnsweredCorrectly,
  });

  final bool isAnsweredCorrectly;

  @override
  Widget build(BuildContext context) {
    return Text(
      isAnsweredCorrectly ? "Вы ответили правильно" : "Вы ответили неправильно",
      style: TextStyle(
        color: isAnsweredCorrectly ? correctAnswerColor : wrongAnswerColor,
        fontSize: 16,
      ),
    );
  }
}