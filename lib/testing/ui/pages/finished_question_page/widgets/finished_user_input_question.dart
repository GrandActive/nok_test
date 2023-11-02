import 'package:flutter/material.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/pages/question_page/widgets/user_input_question/widgets/finished_user_input.dart';

class FinishedUserInputQuestion extends StatelessWidget {
  const FinishedUserInputQuestion({
    super.key,
    required this.question,
  });

  final TestUserInputQuestion question;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 36, top: 24),
        child: Column(
          children: [
            Text(
              "${question.source.title}:",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              question.source.text,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 40),
            FinishedUserInput(question: question),
          ],
        ),
      ),
    );
  }
}
