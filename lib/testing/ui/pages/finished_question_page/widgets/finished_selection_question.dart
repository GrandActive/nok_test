import 'package:flutter/material.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/multiple_answer_list.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/single_answer_list.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/question_text.dart';

class FinishedSelectionQuestion extends StatelessWidget {
  const FinishedSelectionQuestion({
    super.key,
    required this.question,
  });

  final TestSelectionQuestion question;

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
            const SizedBox(height: 40),
            isMultipleAnswers
                ? MultipleAnswerList(
                    possibleAnswers: question.source.possibleAnswers,
                    selectedIndices: selectedAnswers,
                    correctAnswers: question.source.correctAnswerIds,
                    shouldShowCorrectness: true,
                    isDisabled: true,
                  )
                : SingleAnswerList(
                    possibleAnswers: question.source.possibleAnswers,
                    selectedIndex: selectedAnswers.isEmpty ? null : selectedAnswers.first,
                    correctAnswer: question.source.correctAnswerIds.first,
                    shouldShowCorrectness: true,
                    isDisabled: true,
                  ),
          ],
        ),
      ),
    );
  }
}
