import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/questions/base/question_bloc/question_bloc.dart';
import 'package:nok_test/questions/selection_question/selection_question_bloc/selection_question_bloc.dart';
import 'package:nok_test/styles/app_text_styles.dart';
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
    required this.showCorrectness,
    required this.isCorrectAnswer,
  });

  final int index;
  final int? selectedIndex;
  final bool isDisabled;
  final String text;
  final SelectedState selectedState;
  final bool showCorrectness;
  final bool isCorrectAnswer;

  bool get isSelected => selectedState != SelectedState.notSelected;

  bool get isSelectedAsCorrectAnswer => selectedState == SelectedState.selectedCorrectly;

  Color get tileSideColor {
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

  Color get selectedRadioColor {
    return showCorrectness
        ? isSelectedAsCorrectAnswer
            ? correctAnswerColor
            : wrongAnswerColor
        : const Color(0xff277ADB);
  }

  @override
  Widget build(BuildContext context) {
    void setSelected(int? index) {
      final answerMap = index != null ? {index} : <int>{};
      context.read<SelectionQuestionBloc>().add(QuestionEvent.answerSelected(answer: answerMap));
    }

    return Material(
      child: RadioListTile(
        value: index,
        groupValue: selectedIndex,
        onChanged: !isDisabled ? setSelected : null,
        title: Text(
          text.trim(),
          style: AppTextStyles.body1,
        ),
        dense: true,
        fillColor: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.selected)) return selectedRadioColor;
            if (states.contains(WidgetState.disabled)) return const Color(0xFFD9D9D9);
            return const Color(0xff277ADB);
          },
        ),
        toggleable: true,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          side: BorderSide(color: tileSideColor),
        ),
        visualDensity: VisualDensity.compact,
        contentPadding: const EdgeInsets.only(right: 8),
      ),
    );
  }
}
