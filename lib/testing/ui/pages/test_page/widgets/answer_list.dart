import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gip_test/testing/bloc/test_bloc.dart';
import 'package:gip_test/testing/data/model/possible_answer.dart';

class AnswerList extends StatelessWidget {
  const AnswerList({
    super.key,
    required this.possibleAnswers,
    required this.selectedIndices,
    required this.isMultipleAnswers,
    required this.isActive,
  });

  final List<PossibleAnswer> possibleAnswers;
  final Set<int> selectedIndices;
  final bool isMultipleAnswers;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...isMultipleAnswers
            ? possibleAnswers.map(
                (answer) => MultipleSelectAnswerItem(
                  selectedIndices: selectedIndices,
                  isActive: isActive,
                  text: answer.text,
                  index: answer.index,
                  value: selectedIndices.contains(answer.index),
                ),
              )
            : possibleAnswers.map(
                (answer) => SingleSelectAnswerItem(
                  selectedIndex: selectedIndices,
                  isActive: isActive,
                  index: answer.index,
                  text: answer.text,
                ),
              ),
      ],
    );
  }
}

class MultipleSelectAnswerItem extends StatelessWidget {
  const MultipleSelectAnswerItem({
    super.key,
    required this.selectedIndices,
    required this.isActive,
    required this.index,
    required this.text,
    required this.value,
  });

  final int index;
  final bool? value;
  final Set<int> selectedIndices;
  final bool isActive;
  final String text;

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
      title: Text(text),
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
  });

  final int index;
  final Set<int> selectedIndex;
  final bool isActive;
  final String text;

  @override
  Widget build(BuildContext context) {
    void setSelected(int? index) {
      context
          .read<TestBloc>()
          .add(TestEvent.answersSelected(answers: index != null ? {index} : {}));
    }

    return RadioListTile(
      value: index,
      groupValue: selectedIndex.isNotEmpty ? selectedIndex.first : null,
      onChanged: isActive ? setSelected : null,
      title: Text(text),
    );
  }
}
