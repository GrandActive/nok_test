import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/pages/finished_question_page.dart';

@RoutePage()
class QuestionReviewPage extends StatelessWidget {
  const QuestionReviewPage({
    super.key,
    required this.question,
    required this.index,
  });

  final TestQuestion question;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Вопрос ${index + 1}"),
      ),
      body: FinishedQuestionPage(question: question),
    );
  }
}
