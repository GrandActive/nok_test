import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/styles/colors.dart';
import 'package:nok_test/testing/bloc/question_bloc/question_bloc.dart';

class MultipleSelectAnswerItem extends StatelessWidget {
  const MultipleSelectAnswerItem({
    super.key,
    required this.selectedIndices,
    required this.isActive,
    required this.index,
    required this.text,
    required this.value,
    required this.isSelectedAsCorrectAnswer,
    required this.shouldShowCorrectness,
  });

  final int index;
  final bool? value;
  final Set<int> selectedIndices;
  final bool isActive;
  final String text;
  final bool? isSelectedAsCorrectAnswer;
  final bool shouldShowCorrectness;

  bool get isSelected => selectedIndices.contains(index);

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

    void setSelected(bool? isSelected) {
      if (isSelected!) {
        selectedIndices.add(index);
      } else {
        selectedIndices.remove(index);
      }
      context.read<QuestionBloc>().add(QuestionEvent.answerSelected(answer: selectedIndices));
    }

    return Material(
      child: CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        value: value,
        onChanged: isActive ? setSelected : (_) {},
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
        checkboxShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2)),
        ),
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
