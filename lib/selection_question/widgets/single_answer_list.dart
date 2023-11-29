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
    required this.isFinished,
  });

  final List<PossibleAnswer> possibleAnswers;
  final int? selectedIndex;
  final int correctAnswer;
  final bool isFinished;

  bool get shouldShowCorrectness => isFinished && selectedIndex != null;

  bool get isAnsweredCorrectly => selectedIndex == correctAnswer;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (shouldShowCorrectness) ...[
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

              return SingleSelectAnswerItem(
                selectedIndex: selectedIndex,
                isDisabled: isFinished,
                index: answer.index,
                text: answer.text,
                selectedState: selectedState,
                shouldShowCorrectness: shouldShowCorrectness,
                isCorrectAnswer: isCorrect,
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemCount: possibleAnswers.length,
          ),
        ],
      );
}
