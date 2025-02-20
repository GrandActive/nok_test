import 'package:flutter/material.dart';
import 'package:nok_test/common/widgets/popup_select/popup_multiple_select/popup_multiple_select.dart';
import 'package:nok_test/common/widgets/popup_select/popup_single_select/popup_single_select.dart';
import 'package:nok_test/styles/app_text_styles.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';

class QuestionAnswerPair extends StatelessWidget {
  const QuestionAnswerPair({
    super.key,
    required this.question,
    required this.answers,
    required this.selectedAnswers,
    required this.isSingleAnswer,
    required this.onAnswerSelected,
  });

  final PossibleAnswer question;
  final List<PossibleAnswer> answers;
  final List<int>? selectedAnswers;
  final bool isSingleAnswer;
  final ValueSetter<List<PossibleAnswer>?> onAnswerSelected;

  List<int> get selectedIndices =>
      (selectedAnswers ?? []).map((i) => answers.indexWhere((a) => a.index == i)).toList();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(question.text, style: AppTextStyles.body1),
        const SizedBox(height: 8),
        if (isSingleAnswer)
          PopupSingleSelect(
            options: answers.map((a) => a.text).toList(),
            onSelect: (index) {
              final answer = answers[index];
              onAnswerSelected([answer]);
            },
            selectedIndex: selectedIndices.isEmpty ? null : selectedIndices[0],
          )
        else
          PopupMultipleSelect(
            options: answers.map((a) => a.text).toList(),
            onSelect: (indices) {
              if (indices.isEmpty) {
                onAnswerSelected(null);
              } else {
                final selectedAnswers = indices.map((i) => answers[i]).toList();
                onAnswerSelected(selectedAnswers);
              }
            },
            selectedIndices: selectedIndices,
          ),
      ],
    );
  }
}
