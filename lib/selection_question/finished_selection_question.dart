import 'package:flutter/material.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/pages/testing_page/widgets/question_text.dart';

import 'widgets/widgets.dart';

class FinishedSelectionQuestion extends StatelessWidget {
  const FinishedSelectionQuestion({
    super.key,
    required this.question,
    required this.mode,
  });

  final TestSelectionQuestion question;
  final TestMode mode;

  @override
  Widget build(BuildContext context) {
    final selectedAnswers = question.userAnswers ?? {};
    final isMultipleAnswers = question.source.correctAnswerIds.length > 1;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 36, top: 24),
        child: Column(
          children: [
            QuestionText(text: question.source.text),
            const SizedBox(height: 24),
            isMultipleAnswers
                ? MultipleAnswerList(
                    possibleAnswers: question.source.possibleAnswers,
                    selectedIndices: selectedAnswers,
                    correctAnswers: question.source.correctAnswerIds,
                    showCorrectness: mode == TestMode.training && selectedAnswers.isNotEmpty,
                    showResult: selectedAnswers.isNotEmpty,
                    disabled: true,
                  )
                : SingleAnswerList(
                    possibleAnswers: question.source.possibleAnswers,
                    selectedIndex: selectedAnswers.isEmpty ? null : selectedAnswers.first,
                    correctAnswer: question.source.correctAnswerIds.first,
                    showCorrectnessOfSelected: selectedAnswers.isNotEmpty,
                    showCorrectAnswer: mode == TestMode.training && selectedAnswers.isNotEmpty,
                    showResult: selectedAnswers.isNotEmpty,
                    disabled: true,
                  ),
          ],
        ),
      ),
    );
  }
}
