import 'package:flutter/material.dart';

class QuestionMapItem extends StatelessWidget {
  const QuestionMapItem({
    super.key,
    required this.index,
    required this.isAnsweredCorrectly,
    required this.isSelected,
    required this.onPressed,
    this.size = 32,
  });

  final int index;
  final bool? isAnsweredCorrectly;
  final bool isSelected;
  final void Function() onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    Color? color;
    if (isSelected) {
      color = Colors.blue;
    } else {
      if (isAnsweredCorrectly == null) {
        color = Colors.grey;
      } else if (isAnsweredCorrectly!) {
        color = Colors.green;
      } else {
        color = Colors.red;
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
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: onPressed,
        child: Text((index + 1).toString()),
      ),
    );
  }
}
