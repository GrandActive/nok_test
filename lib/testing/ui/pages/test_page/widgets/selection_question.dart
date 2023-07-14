import 'package:flutter/material.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/answer_list.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/question_text.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/submit_button.dart';

class SelectionQuestion extends StatelessWidget {
  const SelectionQuestion({
    super.key,
    required this.question,
    required this.selectedAnswers,
    required this.isFinished,
    required this.isLastQuestion,
    required this.hasUnansweredQuestions,
  });

  final TestSelectionQuestion question;
  final Set<int>? selectedAnswers;
  final bool isFinished;
  final bool isLastQuestion;
  final bool hasUnansweredQuestions;

  @override
  Widget build(BuildContext context) {
    Set<int> answersToSelect;
    if (question.userAnswers?.isNotEmpty ?? false) {
      answersToSelect = Set.from(question.userAnswers!);
    } else {
      answersToSelect = Set.from(selectedAnswers ?? {});
    }

    final isMultipleAnswers = question.source.correctAnswerIds.length > 1;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 36, top: 24),
        child: Column(
          children: [
            QuestionText(text: question.source.text),
            const SizedBox(height: 40),
            AnswerList(
              possibleAnswers: question.source.possibleAnswers,
              selectedIndices: answersToSelect,
              isMultipleAnswers: isMultipleAnswers,
              isActive: !isFinished,
              isAnsweredCorrectly: isFinished ? question.isAnsweredCorrectly : null,
              shouldShowCorrectness: isFinished,
            ),
            const SizedBox(height: 40),
            SubmitButton(
              isLastQuestion: isLastQuestion,
              areAnswersSelected: answersToSelect.isNotEmpty,
              isTestFinished: isFinished,
              hasUnansweredQuestions: hasUnansweredQuestions,
            ),
          ],
        ),
      ),
    );
  }
}
