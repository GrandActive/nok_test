import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/styles/colors.dart';
import 'package:nok_test/testing/bloc/question_bloc/question_bloc.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/selected_state.dart';

class SingleSelectAnswerItem extends StatelessWidget {
  const SingleSelectAnswerItem({
    super.key,
    required this.selectedIndex,
    this.isDisabled = false,
    required this.index,
    required this.text,
    required this.selectedState,
    required this.shouldShowCorrectness,
  });

  final int index;
  final int? selectedIndex;
  final bool isDisabled;
  final String text;
  final SelectedState selectedState;
  final bool shouldShowCorrectness;

  bool get isSelected => selectedState != SelectedState.notSelected;

  bool get isSelectedAsCorrectAnswer => selectedState == SelectedState.selectedCorrectly;

  @override
  Widget build(BuildContext context) {
    final tileSide = BorderSide(
      color: isSelected
          ? shouldShowCorrectness
              ? isSelectedAsCorrectAnswer
                  ? correctAnswerColor
                  : wrongAnswerColor
              : const Color(0xff277ADB)
          : const Color(0xffDBE9F9),
    );

    final radioColor = isSelected && shouldShowCorrectness
        ? isSelectedAsCorrectAnswer
            ? correctAnswerColor
            : wrongAnswerColor
        : const Color(0xff277ADB);

    void setSelected(int? index) {
      context
          .read<QuestionBloc>()
          .add(QuestionEvent.answerSelected(answer: index != null ? {index} : <int>{}));
    }

    return Material(
      child: RadioListTile(
        value: index,
        groupValue: selectedIndex,
        onChanged: !isDisabled ? setSelected : null,
        title: DefaultTextStyle(
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xff464646),
          ),
          child: Text(text),
        ),
        fillColor: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.selected) ? radioColor : null,
        ),
        toggleable: true,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          side: tileSide,
        ),
        visualDensity: VisualDensity.compact,
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
