import 'package:flutter/material.dart';

class SubjectSelect extends StatelessWidget {
  const SubjectSelect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Профессиональный стандарт:",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 8),
        Text(
          "Специалист по организации архитектурно-строительного проектирования.",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
