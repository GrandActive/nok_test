import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:nok_test/matching_question/finished_matching_question.dart';
import 'package:nok_test/selection_question/finished_selection_question.dart';
import 'package:nok_test/sequence_question/finished_sequence_question.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/user_input_question/finished_user_input_question.dart';

@RoutePage()
class QuestionReviewPage extends StatelessWidget {
  const QuestionReviewPage({
    super.key,
    required this.question,
    required this.index,
    required this.mode,
  });

  final TestQuestion question;
  final int index;
  final TestMode mode;

  @override
  Widget build(BuildContext context) {
    final q = question;
    return Scaffold(
      appBar: AppBar(
        title: Text("Вопрос ${index + 1}"),
      ),
      body: switch (q) {
        TestSelectionQuestion() => FinishedSelectionQuestion(question: q, mode: mode),
        TestUserInputQuestion() => FinishedUserInputQuestion(question: q),
        TestSequenceQuestion() => FinishedSequenceQuestion(question: q),
        TestMatchingQuestion() => FinishedMatchingQuestion(question: q)
      },
    );
  }
}
