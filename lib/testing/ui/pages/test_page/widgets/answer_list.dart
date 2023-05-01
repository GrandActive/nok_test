import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gip_test/styles/colors.dart';
import 'package:gip_test/testing/bloc/test_bloc.dart';
import 'package:gip_test/testing/data/model/possible_answer.dart';

class AnswerList extends StatelessWidget {
  const AnswerList({
    super.key,
    required this.possibleAnswers,
    required this.selectedIndices,
    required this.isMultipleAnswers,
    required this.isActive,
    required this.isAnsweredCorrectly,
  });

  final List<PossibleAnswer> possibleAnswers;
  final Set<int> selectedIndices;
  final bool isMultipleAnswers;
  final bool isActive;
  final bool? isAnsweredCorrectly;

  @override
  Widget build(BuildContext context) => isMultipleAnswers
      ? ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final answer = possibleAnswers[index];
            return MultipleSelectAnswerItem(
              selectedIndices: selectedIndices,
              isActive: isActive,
              text: answer.text,
              index: answer.index,
              value: selectedIndices.contains(answer.index),
              isSelectedAsCorrectAnswer:
                  selectedIndices.contains(answer.index) ? isAnsweredCorrectly : null,
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemCount: possibleAnswers.length,
        )
      : ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final answer = possibleAnswers[index];
            return SingleSelectAnswerItem(
              selectedIndex: selectedIndices.isNotEmpty ? selectedIndices.first : null,
              isActive: isActive,
              index: answer.index,
              text: answer.text,
              isSelectedAsCorrectAnswer:
                  selectedIndices.contains(answer.index) ? isAnsweredCorrectly : null,
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemCount: possibleAnswers.length,
        );
}

class MultipleSelectAnswerItem extends StatelessWidget {
  const MultipleSelectAnswerItem({
    super.key,
    required this.selectedIndices,
    required this.isActive,
    required this.index,
    required this.text,
    required this.value,
    required this.isSelectedAsCorrectAnswer,
  });

  final int index;
  final bool? value;
  final Set<int> selectedIndices;
  final bool isActive;
  final String text;
  final bool? isSelectedAsCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    void setSelected(bool? isSelected) {
      if (isSelected!) {
        selectedIndices.add(index);
      } else {
        selectedIndices.remove(index);
      }
      context.read<TestBloc>().add(TestEvent.answersSelected(answers: selectedIndices));
    }

    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      value: value,
      onChanged: isActive ? setSelected : null,
      title: Text(text, style: const TextStyle(fontWeight: FontWeight.w400)),
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        side: BorderSide(
          color: isSelectedAsCorrectAnswer != null
              ? isSelectedAsCorrectAnswer!
                  ? correctAnswerColor
                  : wrongAnswerColor
              : const Color(0xff66A1E5),
        ),
      ),
      side: const BorderSide(width: 2, color: Color(0xff277ADB)),
      checkboxShape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
      contentPadding: EdgeInsets.zero,
    );
  }
}

class SingleSelectAnswerItem extends StatelessWidget {
  const SingleSelectAnswerItem({
    super.key,
    required this.selectedIndex,
    required this.isActive,
    required this.index,
    required this.text,
    required this.isSelectedAsCorrectAnswer,
  });

  final int index;
  final int? selectedIndex;
  final bool isActive;
  final String text;
  final bool? isSelectedAsCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    void setSelected(int? index) {
      context
          .read<TestBloc>()
          .add(TestEvent.answersSelected(answers: index != null ? {index} : {}));
    }

    return RadioListTile(
      value: index,
      groupValue: selectedIndex,
      onChanged: isActive ? setSelected : null,
      title: Text(text, style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        side: BorderSide(
          width: 1,
          color: isSelectedAsCorrectAnswer != null
              ? isSelectedAsCorrectAnswer!
                  ? correctAnswerColor
                  : wrongAnswerColor
              : const Color(0xff277ADB),
        ),
      ),
      visualDensity: VisualDensity.compact,
      contentPadding: EdgeInsets.zero,
    );
  }
}
