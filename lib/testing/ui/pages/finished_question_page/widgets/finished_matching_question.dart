import 'package:flutter/material.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/pages/question_page/widgets/matching_question/widgets/finished_matching_answer_list.dart';

class FinishedMatchingQuestion extends StatelessWidget {
  const FinishedMatchingQuestion({
    super.key,
    required this.question,
  });

  final TestMatchingQuestion question;

  @override
  Widget build(BuildContext context) {
    final answer = question.userAnswer ?? {};

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 24, right: 16, bottom: 36),
        child: Column(
          children: [
            Text(
              question.source.text,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 40),
            FinishedMatchingAnswerList(question: question, answer: answer),
          ],
        ),
      ),
    );
  }
}
