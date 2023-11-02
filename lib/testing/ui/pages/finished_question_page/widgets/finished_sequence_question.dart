import 'package:flutter/material.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/pages/question_page/widgets/sequence_question/widgets/finished_sequence_answer_list.dart';

class FinishedSequenceQuestion extends StatelessWidget {
  const FinishedSequenceQuestion({
    super.key,
    required this.question,
  });

  final TestSequenceQuestion question;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 24, right: 16, bottom: 36),
        child: Column(
          children: [
            Text(
              question.source.title,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            FinishedSequenceAnswerList(question: question)
          ],
        ),
      ),
    );
  }
}
