import 'package:flutter/material.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

import 'question_answer_pair.dart';

class MatchingAnswerList extends StatelessWidget {
  const MatchingAnswerList({
    super.key,
    required this.question,
    required this.selectedAnswers,
  });

  final TestMatchingQuestion question;
  final Map<int, int?> selectedAnswers;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => QuestionAnswerPair(
        question: question.source.questions[index],
        answers: question.source.answers,
        selectedAnswers: selectedAnswers,
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemCount: question.source.questions.length,
    );
  }
}
