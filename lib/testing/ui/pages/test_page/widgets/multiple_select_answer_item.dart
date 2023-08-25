import 'package:flutter/material.dart';
import 'package:nok_test/styles/colors.dart';

class MultipleSelectAnswerItem extends StatelessWidget {
  const MultipleSelectAnswerItem({
    super.key,
    required this.isActive,
    required this.text,
    required this.isSelectedAsCorrectAnswer,
    required this.shouldShowCorrectness,
    required this.isSelected,
    required this.onChanged,
  });

  final bool isActive;
  final String text;
  final bool? isSelectedAsCorrectAnswer;
  final bool shouldShowCorrectness;
  final void Function(bool? isSelected) onChanged;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final tileSide = BorderSide(
      color: isSelected
          ? shouldShowCorrectness
              ? isSelectedAsCorrectAnswer!
                  ? correctAnswerColor
                  : wrongAnswerColor
              : const Color(0xff277ADB)
          : const Color(0xffDBE9F9),
    );

    final checkboxColor = isSelected && shouldShowCorrectness
        ? isSelectedAsCorrectAnswer!
            ? correctAnswerColor
            : wrongAnswerColor
        : const Color(0xff277ADB);

    return Material(
      child: CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        value: isSelected,
        onChanged: isActive ? onChanged : null,
        title: DefaultTextStyle(
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xff464646),
          ),
          child: Text(text),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          side: tileSide,
        ),
        activeColor: checkboxColor,
        fillColor: MaterialStateColor.resolveWith((states) {
          if (isActive) {
            if (states.contains(MaterialState.selected)) return const Color(0xff277ADB);
            return Colors.transparent;
          } else {
            if (states.contains(MaterialState.selected)) {
              if (isSelectedAsCorrectAnswer == null) return Colors.transparent;
              return isSelectedAsCorrectAnswer! ? correctAnswerColor : wrongAnswerColor;
            }
            return Colors.transparent;
          }
        }),
        checkboxShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2)),
        ),
        side: BorderSide(width: 1, color: checkboxColor),
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
