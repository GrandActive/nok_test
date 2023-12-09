import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/common/widgets/answer_result.dart';
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

  void _setSelected(int index, bool isSelected, BuildContext context) {
    final answer = possibleAnswers[index];

    Set<int> newAnswers;
    if (isSelected) {
      newAnswers = Set.from(selectedIndices.toList() + [answer.index]);
    } else {
      newAnswers = selectedIndices.where((index) => index != answer.index).toSet();
    }
    context
        .read<SelectionQuestionBloc>()
        .add(SelectionQuestionEvent.answerSelected(answer: newAnswers));
  }

  @override
  Widget build(BuildContext context) {
    final isAnsweredCorrectly = setEquals(selectedIndices, correctAnswers);

    return Column(
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
            final isSelected = selectedIndices.contains(answer.index);
            final isCorrectAnswer = correctAnswers.contains(answer.index);

            final selectedState = !isSelected
                ? SelectedState.notSelected
                : isCorrectAnswer
                    ? SelectedState.selectedCorrectly
                    : SelectedState.selectedIncorrectly;

            final showCorrectness = isSelected ? showCorrectnessOfSelected : showCorrectAnswer;

            return MultipleSelectAnswerItem(
              isActive: !disabled,
              text: answer.text,
              showCorrectness: showCorrectness,
              onChanged: (isSelected) => _setSelected(index, isSelected!, context),
              selectedState: selectedState,
              isCorrectAnswer: isCorrectAnswer,
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemCount: possibleAnswers.length,
        ),
      ],
    );
  }
}
