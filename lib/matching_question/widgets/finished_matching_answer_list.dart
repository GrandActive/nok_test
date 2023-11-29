import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nok_test/common/widgets/answer_result.dart';
import 'package:nok_test/matching_question/widgets/finished_question_answer_pair.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/utils/first_where_or_null.dart';

class FinishedMatchingAnswerList extends StatelessWidget {
  const FinishedMatchingAnswerList({
    super.key,
    required this.question,
    required this.answer,
  });

  final TestMatchingQuestion question;
  final Map<int, int?> answer;

  bool get shouldShowCorrectness => answer.values.isNotEmpty;

  PossibleAnswer? _getAnswer(int? index) {
    return question.source.answers.firstWhereOrNull((a) => a.index == index);
  }

  @override
  Widget build(BuildContext context) {
    final isAnsweredCorrectly = mapEquals(answer, question.source.correctMatch);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (shouldShowCorrectness) ...[
          AnswerResult(isAnsweredCorrectly: isAnsweredCorrectly),
          const SizedBox(height: 24),
        ],
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final q = question.source.questions[index];
            final answerIndex = answer[q.index];
            final correctAnswerIndex = question.source.correctMatch[q.index];
            return FinishedQuestionAnswerPair(
              question: q,
              answer: _getAnswer(answerIndex),
              correctAnswer: _getAnswer(correctAnswerIndex),
              shouldShowCorrectness: shouldShowCorrectness,
            );
          },
          separatorBuilder: (_, __) => const SizedBox(height: 16),
          itemCount: question.source.questions.length,
        ),
      ],
    );
  }
}
