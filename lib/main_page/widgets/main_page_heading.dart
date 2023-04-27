import 'package:flutter/material.dart';

class MainPageHeading extends StatelessWidget {
  const MainPageHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Text(
        "Тренажер по подготовке к тестам НОК",
        style: TextStyle(color: Color(0xff277ADB), fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
