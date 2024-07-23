import 'package:flutter/material.dart';
import 'package:nok_test/styles/colors.dart';
import 'package:nok_test/testing/ui/pages/testing_page/widgets/selected_state.dart';

class MultipleSelectAnswerItem extends StatelessWidget {
  const MultipleSelectAnswerItem({
    super.key,
    required this.isActive,
    required this.text,
    required this.selectedState,
    required this.showCorrectness,
    required this.onChanged,
    required this.isCorrectAnswer,
  });

  final bool isActive;
  final String text;
  final SelectedState selectedState;
  final bool showCorrectness;
  final void Function(bool? isSelected) onChanged;
  final bool isCorrectAnswer;

  bool get isSelected => selectedState != SelectedState.notSelected;

  bool get isSelectedAsCorrectAnswer => selectedState == SelectedState.selectedCorrectly;

  Color get _tileSideColor {
    if (isSelected) {
      if (!showCorrectness) return const Color(0xff277ADB);
      if (isCorrectAnswer) {
        return correctAnswerColor;
      } else {
        return wrongAnswerColor;
      }
    } else {
      if (!showCorrectness) return const Color(0xffDBE9F9);
      if (isCorrectAnswer) {
        return correctAnswerColor;
      } else {
        return const Color(0xffDBE9F9);
      }
    }
  }

  Color _resolveCheckboxColor(
    Set<MaterialState> states, {
    Color disabledColor = Colors.transparent,
    Color defaultColor = Colors.transparent,
  }) {
    if (states.contains(MaterialState.selected) && states.contains(MaterialState.disabled)) {
      if (showCorrectness) {
        return isSelectedAsCorrectAnswer ? correctAnswerColor : wrongAnswerColor;
      } else {
        return const Color(0xff277ADB);
      }
    }
    if (states.contains(MaterialState.disabled)) {
      return disabledColor;
    }
    if (states.contains(MaterialState.selected)) {
      return const Color(0xff277ADB);
    }
    return defaultColor;
  }

  @override
  Widget build(BuildContext context) {
    final checkboxValue = isSelected
        ? showCorrectness
            ? isCorrectAnswer
                ? true
                : null
            : true
        : false;

    return Material(
      child: CheckboxListTile(
        tristate: showCorrectness,
        controlAffinity: ListTileControlAffinity.leading,
        value: checkboxValue,
        onChanged: isActive ? onChanged : null,
        title: Text(
          text.trim(),
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xff464646),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          side: BorderSide(color: _tileSideColor),
        ),
        fillColor: MaterialStateColor.resolveWith(_resolveCheckboxColor),
        checkboxShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2)),
        ),
        side: MaterialStateBorderSide.resolveWith(
          (states) => BorderSide(
            width: 1,
            color: _resolveCheckboxColor(
              states,
              disabledColor: const Color(0xFFD9D9D9),
              defaultColor: const Color(0xff277ADB),
            ),
          ),
        ),
        contentPadding: const EdgeInsets.only(right: 8),
      ),
    );
  }
}
