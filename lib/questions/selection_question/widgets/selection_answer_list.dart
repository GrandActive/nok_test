import 'package:flutter/material.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';

import 'multiple_answer_list.dart';
import 'single_answer_list.dart';

class SelectionAnswerList extends StatelessWidget {
  const SelectionAnswerList({
    super.key,
    required this.possibleAnswers,
    required this.selectedIndices,
    required this.correctAnswers,
    required this.showCorrectnessOfSelected,
    required this.showCorrectAnswer,
    required this.showResult,
    required this.disabled,
  });

  final List<PossibleAnswer> possibleAnswers;
  final Set<int> selectedIndices;
  final Set<int> correctAnswers;
  final bool showCorrectnessOfSelected;
  final bool showCorrectAnswer;
  final bool showResult;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    final isMultipleAnswers = correctAnswers.length > 1;

    return isMultipleAnswers
        ? MultipleAnswerList(
            possibleAnswers: possibleAnswers,
            selectedIndices: selectedIndices,
            correctAnswers: correctAnswers,
            showCorrectnessOfSelected: showCorrectnessOfSelected,
            showCorrectAnswer: showCorrectAnswer,
            showResult: showResult,
            disabled: disabled,
          )
        : SingleAnswerList(
            possibleAnswers: possibleAnswers,
            selectedIndex: selectedIndices.firstOrNull,
            correctAnswer: correctAnswers.first,
            showCorrectnessOfSelected: showCorrectnessOfSelected,
            showCorrectAnswer: showCorrectAnswer,
            showResult: showResult,
            disabled: disabled,
          );
  }
}
