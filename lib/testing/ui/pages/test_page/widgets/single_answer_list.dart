import 'package:flutter/material.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/selected_state.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/single_select_answer_item.dart';

class SingleAnswerList extends StatelessWidget {
  const SingleAnswerList({
    super.key,
    required this.possibleAnswers,
    required this.selectedIndex,
    this.isDisabled = false,
    required this.correctAnswer,
    required this.shouldShowCorrectness,
  });

  final List<PossibleAnswer> possibleAnswers;
  final int? selectedIndex;
  final bool isDisabled;
  final int correctAnswer;
  final bool shouldShowCorrectness;

  @override
  Widget build(BuildContext context) => ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final answer = possibleAnswers[index];

          SelectedState selectedState = selectedIndex != answer.index
              ? SelectedState.notSelected
              : answer.index == correctAnswer
                  ? SelectedState.selectedCorrectly
                  : SelectedState.selectedIncorrectly;

          return SingleSelectAnswerItem(
            selectedIndex: selectedIndex,
            isDisabled: isDisabled,
            index: answer.index,
            text: answer.text,
            selectedState: selectedState,
            shouldShowCorrectness: shouldShowCorrectness,
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemCount: possibleAnswers.length,
      );
}
