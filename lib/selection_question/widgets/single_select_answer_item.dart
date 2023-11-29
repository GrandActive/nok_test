import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/selection_question/selection_question_bloc/selection_question_bloc.dart';
import 'package:nok_test/styles/colors.dart';
import 'package:nok_test/testing/ui/pages/testing_page/widgets/selected_state.dart';

class SingleSelectAnswerItem extends StatelessWidget {
  const SingleSelectAnswerItem({
    super.key,
    required this.selectedIndex,
    this.isDisabled = false,
    required this.index,
    required this.text,
    required this.selectedState,
    required this.shouldShowCorrectness,
    required this.isCorrectAnswer,
  });

  final int index;
  final int? selectedIndex;
  final bool isDisabled;
  final String text;
  final SelectedState selectedState;
  final bool shouldShowCorrectness;
  final bool isCorrectAnswer;

  bool get isSelected => selectedState != SelectedState.notSelected;

  bool get isSelectedAsCorrectAnswer => selectedState == SelectedState.selectedCorrectly;

  Color get tileSideColor {
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

  Color get selectedRadioColor {
    return shouldShowCorrectness
        ? isSelectedAsCorrectAnswer
            ? correctAnswerColor
            : wrongAnswerColor
        : const Color(0xff277ADB);
  }

  @override
  Widget build(BuildContext context) {
    void setSelected(int? index) {
      context
          .read<SelectionQuestionBloc>()
          .add(SelectionQuestionEvent.answerSelected(answer: index != null ? {index} : <int>{}));
    }

    return Material(
      child: RadioListTile(
        value: index,
        groupValue: selectedIndex,
        onChanged: !isDisabled ? setSelected : null,
        title: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xff464646),
          ),
        ),
        fillColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) return selectedRadioColor;
            if (states.contains(MaterialState.disabled)) return const Color(0xFFD9D9D9);
            return const Color(0xff277ADB);
          },
        ),
        toggleable: true,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          side: BorderSide(color: tileSideColor),
        ),
        visualDensity: VisualDensity.compact,
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
