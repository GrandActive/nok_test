import 'package:flutter/material.dart';
import 'package:nok_test/testing/data/model/question.dart';
import 'package:nok_test/testing/ui/pages/testing_page/widgets/question_text.dart';

import 'widgets/widgets.dart';

class FinishedSelectionQuestion extends StatelessWidget {
  const FinishedSelectionQuestion({
    super.key,
    required this.question,
    required this.showResult,
    required this.selectedAnswers,
    this.showCorrectAnswer = true,
  });

  final SelectionQuestion question;
  final Set<int>? selectedAnswers;
  final bool showResult;
  final bool showCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final answers = selectedAnswers ?? {};

    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 36, top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionText(text: question.text),
          const SizedBox(height: 24),
          SelectionAnswerList(
            possibleAnswers: question.possibleAnswers,
            selectedIndices: answers,
            correctAnswers: question.correctAnswerIds,
            showCorrectnessOfSelected: answers.isNotEmpty,
            showCorrectAnswer: showCorrectAnswer,
            showResult: showResult,
            disabled: true,
          ),
        ],
      ),
    );
  }
}
