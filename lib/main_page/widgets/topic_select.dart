import 'package:flutter/material.dart';

class TopicSelect extends StatelessWidget {
  const TopicSelect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          "Квалификация:",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 8),
        Text(
          "Главный инженер проекта (специалист по организации архитектурно-строительного проектирования (7 уровень квалификации).",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
