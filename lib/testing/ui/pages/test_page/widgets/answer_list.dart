import 'package:flutter/material.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/multiple_select_answer_item.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/single_select_answer_item.dart';

class AnswerList extends StatelessWidget {
  const AnswerList({
    super.key,
    required this.possibleAnswers,
    required this.selectedIndices,
    required this.isMultipleAnswers,
    required this.isActive,
    required this.isAnsweredCorrectly,
    required this.shouldShowCorrectness,
  });

  final List<PossibleAnswer> possibleAnswers;
  final Set<int> selectedIndices;
  final bool isMultipleAnswers;
  final bool isActive;
  final bool? isAnsweredCorrectly;
  final bool shouldShowCorrectness;

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
              shouldShowCorrectness: shouldShowCorrectness,
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
              shouldShowCorrectness: shouldShowCorrectness,
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemCount: possibleAnswers.length,
        );
}
