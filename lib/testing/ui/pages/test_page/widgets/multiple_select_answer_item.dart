import 'package:flutter/material.dart';
import 'package:nok_test/styles/colors.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/selected_state.dart';

class MultipleSelectAnswerItem extends StatelessWidget {
  const MultipleSelectAnswerItem({
    super.key,
    required this.isActive,
    required this.text,
    required this.selectedState,
    required this.shouldShowCorrectness,
    required this.onChanged,
    required this.isCorrectAnswer,
  });

  final bool isActive;
  final String text;
  final SelectedState selectedState;
  final bool shouldShowCorrectness;
  final void Function(bool? isSelected) onChanged;
  final bool isCorrectAnswer;

  bool get isSelected => selectedState != SelectedState.notSelected;

  bool get isSelectedAsCorrectAnswer => selectedState == SelectedState.selectedCorrectly;

  Color get _tileSideColor {
    if (isSelected) {
      if (!shouldShowCorrectness) return const Color(0xff277ADB);
      if (isCorrectAnswer) {
        return correctAnswerColor;
      } else {
        return wrongAnswerColor;
      }
    } else {
      if (!shouldShowCorrectness) return const Color(0xffDBE9F9);
      if (isCorrectAnswer) {
        return correctAnswerColor;
      } else {
        return const Color(0xffDBE9F9);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final checkboxColor = isSelected && shouldShowCorrectness
        ? isCorrectAnswer
            ? correctAnswerColor
            : wrongAnswerColor
        : const Color(0xff277ADB);

    final checkboxValue = isSelected
        ? shouldShowCorrectness
            ? isCorrectAnswer
                ? true
                : null
            : true
        : false;

    return Material(
      child: CheckboxListTile(
        tristate: shouldShowCorrectness,
        controlAffinity: ListTileControlAffinity.leading,
        value: checkboxValue,
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
          side: BorderSide(color: _tileSideColor),
        ),
        activeColor: checkboxColor,
        fillColor: MaterialStateColor.resolveWith((states) {
          if (isActive) {
            if (states.contains(MaterialState.selected)) return const Color(0xff277ADB);
            return Colors.transparent;
          } else {
            if (states.contains(MaterialState.selected)) {
              if (selectedState == SelectedState.notSelected) return Colors.transparent;
              return isSelectedAsCorrectAnswer ? correctAnswerColor : wrongAnswerColor;
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
