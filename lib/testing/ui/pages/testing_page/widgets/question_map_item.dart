import 'package:flutter/material.dart';
import 'package:nok_test/styles/colors.dart';

class QuestionMapItem extends StatelessWidget {
  const QuestionMapItem({
    super.key,
    required this.index,
    required this.isAnsweredCorrectly,
    required this.isSelected,
    required this.onPressed,
    this.size = 32,
    this.showAnswerCorrectness = false,
  });

  final int index;
  final bool? isAnsweredCorrectly;
  final bool isSelected;
  final void Function() onPressed;
  final double size;
  final bool showAnswerCorrectness;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color textColor;
    if (isSelected) {
      backgroundColor = primaryColor;
      textColor = Colors.white;
    } else {
      if (isAnsweredCorrectly == null) {
        backgroundColor = const Color(0xffD9D9D9);
        textColor = Colors.black;
      } else if (showAnswerCorrectness) {
        if (isAnsweredCorrectly!) {
          backgroundColor = correctAnswerColor;
          textColor = Colors.white;
        } else {
          backgroundColor = wrongAnswerColor;
          textColor = Colors.white;
        }
      } else {
        backgroundColor = const Color(0xff66A1E5);
        textColor = Colors.white;
      }
    }

    return SizedBox(
      height: size,
      width: size,
      child: FilledButton.tonal(
        style: ButtonStyle(
          shape: const MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
          padding: const MaterialStatePropertyAll(EdgeInsets.all(4)),
          backgroundColor: MaterialStateProperty.all(backgroundColor),
        ),
        onPressed: onPressed,
        child: Text(
          (index + 1).toString(),
          style: TextStyle(color: textColor, fontSize: 12),
        ),
      ),
    );
  }
}
