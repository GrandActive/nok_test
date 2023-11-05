import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/selection_question/selection_question_bloc/selection_question_bloc.dart';
import 'package:nok_test/selection_question/widgets/multiple_select_answer_item.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/testing/ui/pages/testing_page/widgets/selected_state.dart';

class MultipleAnswerList extends StatelessWidget {
  const MultipleAnswerList({
    super.key,
    required this.possibleAnswers,
    required this.selectedIndices,
    required this.correctAnswers,
    required this.shouldShowCorrectness,
    this.isDisabled = false,
  });

  final List<PossibleAnswer> possibleAnswers;
  final Set<int> selectedIndices;
  final Set<int> correctAnswers;
  final bool shouldShowCorrectness;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) => ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final answer = possibleAnswers[index];
          final isSelected = selectedIndices.contains(answer.index);
          final isCorrectAnswer = correctAnswers.contains(answer.index);

          SelectedState selectedState;
          if (!isSelected) {
            selectedState = SelectedState.notSelected;
          } else {
            if (isCorrectAnswer) {
              selectedState = SelectedState.selectedCorrectly;
            } else {
              selectedState = SelectedState.selectedIncorrectly;
            }
          }

          return MultipleSelectAnswerItem(
            isActive: !isDisabled,
            text: answer.text,
            shouldShowCorrectness: shouldShowCorrectness,
            onChanged: (isSelected) {
              Set<int> newAnswers;
              if (isSelected!) {
                newAnswers = Set.from(selectedIndices.toList() + [answer.index]);
              } else {
                newAnswers = selectedIndices.where((index) => index != answer.index).toSet();
              }
              context
                  .read<SelectionQuestionBloc>()
                  .add(SelectionQuestionEvent.answerSelected(answer: newAnswers));
            },
            selectedState: selectedState,
            isCorrectAnswer: isCorrectAnswer,
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemCount: possibleAnswers.length,
      );
}
