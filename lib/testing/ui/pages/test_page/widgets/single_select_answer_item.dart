import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gip_test/styles/colors.dart';
import 'package:gip_test/testing/bloc/test_bloc.dart';

class SingleSelectAnswerItem extends StatelessWidget {
  const SingleSelectAnswerItem({
    super.key,
    required this.selectedIndex,
    required this.isActive,
    required this.index,
    required this.text,
    required this.isSelectedAsCorrectAnswer,
    required this.shouldShowCorrectness,
  });

  final int index;
  final int? selectedIndex;
  final bool isActive;
  final String text;
  final bool? isSelectedAsCorrectAnswer;
  final bool shouldShowCorrectness;

  bool get isSelected => selectedIndex == index;

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

    final radioColor = isSelected && shouldShowCorrectness
        ? isSelectedAsCorrectAnswer!
            ? correctAnswerColor
            : wrongAnswerColor
        : const Color(0xff277ADB);

    void setSelected(int? index) {
      context
          .read<TestBloc>()
          .add(TestEvent.answersSelected(answers: index != null ? {index} : {}));
    }

    return Material(
      child: RadioListTile(
        value: index,
        groupValue: selectedIndex,
        onChanged: isActive ? setSelected : (_) {},
        title: DefaultTextStyle(
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xff464646),
          ),
          child: Text(text),
        ),
        activeColor: radioColor,
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
