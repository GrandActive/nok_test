import 'package:flutter/material.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/answer_list.dart';
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

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 36, top: 24),
        child: Column(
          children: [
            QuestionText(text: question.source.text),
            const SizedBox(height: 40),
            AnswerList(
              possibleAnswers: question.source.possibleAnswers,
              selectedIndices: selectedAnswers,
              isMultipleAnswers: question.source.correctAnswerIds.length > 1,
              isActive: false,
              isAnsweredCorrectly: question.isAnsweredCorrectly,
              shouldShowCorrectness: true,
            ),
          ],
        ),
      ),
    );
  }
}
