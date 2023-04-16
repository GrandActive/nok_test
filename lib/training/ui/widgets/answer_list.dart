import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gip_test/training/bloc/test_bloc.dart';

class AnswerList extends StatelessWidget {
  const AnswerList({
    super.key,
    required this.possibleAnswers,
    required this.selectedIndices,
    required this.isMultipleAnswers,
    required this.isAnswered,
  });

  final List<String> possibleAnswers;
  final Set<int> selectedIndices;
  final bool isMultipleAnswers;
  final bool isAnswered;

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
              (index) =>
              MultipleSelectAnswerItem(
                selectedIndices: selectedIndices,
                isAnswered: isAnswered,
                title: possibleAnswers[index],
                index: index,
                value: selectedIndices.contains(index),
              ),
        )
            : optionsIndexes.map(
              (index) =>
              SingleSelectAnswerItem(
                selectedIndices: selectedIndices,
                isAnswered: isAnswered,
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
    required this.isAnswered,
    required this.index,
    required this.title,
    required this.value,
  });

  final int index;
  final bool? value;
  final Set<int> selectedIndices;
  final bool isAnswered;
  final String title;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      value: value,
      onChanged: isAnswered
          ? null
          : (_) {
        if (selectedIndices.contains(index)) {
          selectedIndices.remove(index);
        } else {
          selectedIndices.add(index);
        }
        context.read<TestBloc>().add(TestEvent.answersSelected(answers: selectedIndices));
      },
      title: Text(title),
    );
  }
}

class SingleSelectAnswerItem extends StatelessWidget {
  const SingleSelectAnswerItem({
    super.key,
    required this.selectedIndices,
    required this.isAnswered,
    required this.possibleAnswers,
    required this.index,
  });

  final int index;
  final Set<int> selectedIndices;
  final bool isAnswered;
  final List<String> possibleAnswers;

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      value: index,
      groupValue: selectedIndices.isNotEmpty ? selectedIndices.first : null,
      onChanged: isAnswered
          ? null
          : (int? index) =>
          context
              .read<TestBloc>()
              .add(TestEvent.answersSelected(answers: index != null ? {index} : {})),
      title: Text(possibleAnswers[index]),
    );
  }
}
