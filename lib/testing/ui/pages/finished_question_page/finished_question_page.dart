import 'package:flutter/material.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/pages/finished_question_page/widgets/widgets.dart';

class FinishedQuestionPage extends StatelessWidget {
  const FinishedQuestionPage({
    super.key,
    required this.question,
  });

  final TestQuestion question;

  @override
  Widget build(BuildContext context) {
    switch (question) {
      case TestSelectionQuestion():
        return FinishedSelectionQuestion(question: question as TestSelectionQuestion);
      case TestUserInputQuestion():
        return FinishedUserInputQuestion(question: question as TestUserInputQuestion);
      case TestSequenceQuestion():
        return FinishedSequenceQuestion(question: question as TestSequenceQuestion);
      case TestMatchingQuestion():
        return FinishedMatchingQuestion(question: question as TestMatchingQuestion);
    }
  }
}
