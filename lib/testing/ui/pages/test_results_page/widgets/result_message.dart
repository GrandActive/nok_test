import 'package:flutter/material.dart';

class ResultMessage extends StatelessWidget {
  const ResultMessage({
    super.key,
    required this.isTestPassed,
  });

  final bool isTestPassed;

  @override
  Widget build(BuildContext context) {
    return Text(
      isTestPassed ? "Поздравляем, вы прошли экзамен!" : "Тест не пройден",
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    );
  }
}
