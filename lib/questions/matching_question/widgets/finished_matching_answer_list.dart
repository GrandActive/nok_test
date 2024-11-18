import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nok_test/common/widgets/answer_result.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/testing/data/model/question.dart';
import 'package:nok_test/utils/first_where_or_null.dart';

import 'finished_question_answer_pair.dart';

class FinishedMatchingAnswerList extends StatelessWidget {
  const FinishedMatchingAnswerList({
    super.key,
    required this.question,
    required this.answer,
    required this.showCorrectness,
    required this.showCorrectAnswer,
    required this.showResult,
  });

  final MatchingQuestion question;
  final Map<int, int?> answer;
  final bool showCorrectness;
  final bool showCorrectAnswer;
  final bool showResult;

  PossibleAnswer? _getAnswer(int? index) {
    return question.answers.firstWhereOrNull((a) => a.index == index);
  }

  @override
  Widget build(BuildContext context) {
    final isAnsweredCorrectly = mapEquals(answer, question.correctMatch);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showResult) ...[
          AnswerResult(isAnsweredCorrectly: isAnsweredCorrectly),
          const SizedBox(height: 24),
        ],
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final q = question.questions[index];
            final answerIndex = answer[q.index];
            final correctAnswerIndex = question.correctMatch[q.index];
            return FinishedQuestionAnswerPair(
              question: q,
              answer: _getAnswer(answerIndex),
              correctAnswer: _getAnswer(correctAnswerIndex),
              showCorrectness: showCorrectness,
              showCorrectAnswer: showCorrectAnswer,
            );
          },
          separatorBuilder: (_, __) => const SizedBox(height: 16),
          itemCount: question.questions.length,
        ),
      ],
    );
  }
}
