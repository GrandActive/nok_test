import 'package:flutter/material.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/utils/list_separated_extension.dart';

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
    return Column(
      children: question.source.questions
          .map<Widget>((q) => QuestionAnswerPair(
                question: q,
                answers: question.source.answers,
                selectedAnswers: selectedAnswers,
              ))
          .toList()
          .separatedBy(const SizedBox(height: 16)),
    );
  }
}
