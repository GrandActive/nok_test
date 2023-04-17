import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gip_test/training/bloc/test_bloc.dart';

class AnswerList extends StatelessWidget {
  const AnswerList({
    super.key,
    required this.possibleAnswers,
    required this.selectedIndices,
    required this.isMultipleAnswers,
    required this.isActive,
  });

  final List<String> possibleAnswers;
  final Set<int> selectedIndices;
  final bool isMultipleAnswers;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final optionsIndexes = List.generate(
      possibleAnswers.length,
      (index) => index,
    );

    return Column(
      children: [
        ...isMultipleAnswers
            ? optionsIndexes.map(
                (index) => MultipleSelectAnswerItem(
                  selectedIndices: selectedIndices,
                  isActive: isActive,
                  title: possibleAnswers[index],
                  index: index,
                  value: selectedIndices.contains(index),
                ),
              )
            : optionsIndexes.map(
                (index) => SingleSelectAnswerItem(
                  selectedIndices: selectedIndices,
                  isActive: isActive,
                  possibleAnswers: possibleAnswers,
                  index: index,
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
    required this.title,
    required this.value,
  });

  final int index;
  final bool? value;
  final Set<int> selectedIndices;
  final bool isActive;
  final String title;

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
      title: Text(title),
    );
  }
}

class SingleSelectAnswerItem extends StatelessWidget {
  const SingleSelectAnswerItem({
    super.key,
    required this.selectedIndices,
    required this.isActive,
    required this.possibleAnswers,
    required this.index,
  });

  final int index;
  final Set<int> selectedIndices;
  final bool isActive;
  final List<String> possibleAnswers;

  @override
  Widget build(BuildContext context) {
    void setSelected(int? index) {
      context
          .read<TestBloc>()
          .add(TestEvent.answersSelected(answers: index != null ? {index} : {}));
    }

    return RadioListTile(
      value: index,
      groupValue: selectedIndices.isNotEmpty ? selectedIndices.first : null,
      onChanged: isActive ? setSelected : null,
      title: Text(possibleAnswers[index]),
    );
  }
}
