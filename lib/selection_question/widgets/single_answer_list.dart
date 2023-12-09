import 'package:flutter/material.dart';
import 'package:nok_test/common/widgets/answer_result.dart';
import 'package:nok_test/selection_question/widgets/single_select_answer_item.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/testing/ui/pages/testing_page/widgets/selected_state.dart';

class SingleAnswerList extends StatelessWidget {
  const SingleAnswerList({
    super.key,
    required this.possibleAnswers,
    required this.selectedIndex,
    required this.correctAnswer,
    required this.showCorrectnessOfSelected,
    required this.showCorrectAnswer,
    required this.showResult,
    required this.disabled,
  });

  final List<PossibleAnswer> possibleAnswers;
  final int? selectedIndex;
  final int correctAnswer;
  final bool showCorrectnessOfSelected;
  final bool showCorrectAnswer;
  final bool showResult;
  final bool disabled;

  bool get isAnsweredCorrectly => selectedIndex == correctAnswer;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showResult) ...[
            AnswerResult(isAnsweredCorrectly: isAnsweredCorrectly),
            const SizedBox(height: 24),
          ],
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final answer = possibleAnswers[index];

              SelectedState selectedState = selectedIndex != answer.index
                  ? SelectedState.notSelected
                  : answer.index == correctAnswer
                      ? SelectedState.selectedCorrectly
                      : SelectedState.selectedIncorrectly;

              final isCorrect = correctAnswer == answer.index;
              final isSelected = selectedState != SelectedState.notSelected;

              final showCorrectness = isSelected ? showCorrectnessOfSelected : showCorrectAnswer;

              return SingleSelectAnswerItem(
                selectedIndex: selectedIndex,
                isDisabled: disabled,
                index: answer.index,
                text: answer.text,
                selectedState: selectedState,
                showCorrectness: showCorrectness,
                isCorrectAnswer: isCorrect,
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemCount: possibleAnswers.length,
          ),
        ],
      );
}
