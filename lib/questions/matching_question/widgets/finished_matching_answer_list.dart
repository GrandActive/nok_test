import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nok_test/common/widgets/answer_result.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/testing/data/model/question.dart';
import 'package:nok_test/utils/list_separated_extension.dart';

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
  final Map<int, List<int>?> answer;
  final bool showCorrectness;
  final bool showCorrectAnswer;
  final bool showResult;

  List<PossibleAnswer>? _getAnswers(List<int>? indices) {
    final answers = indices?.map((i) => question.answers.firstWhere((a) => a.index == i)).toList();
    return answers;
  }

  @override
  Widget build(BuildContext context) {
    final isAnsweredCorrectly = DeepCollectionEquality().equals(answer, question.correctMatch);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showResult) ...[
          AnswerResult(isAnsweredCorrectly: isAnsweredCorrectly),
          const SizedBox(height: 24),
        ],
        Column(
          children: question.questions
              .map<Widget>((q) {
                final answerIndices = answer[q.index];
                final correctAnswerIndices = question.correctMatch[q.index];
                return FinishedQuestionAnswerPair(
                  question: q,
                  answers: _getAnswers(answerIndices),
                  correctAnswer: _getAnswers(correctAnswerIndices),
                  showCorrectness: showCorrectness,
                  showCorrectAnswer: showCorrectAnswer,
                );
              })
              .toList()
              .separatedBy(const SizedBox(height: 16)),
        ),
      ],
    );
  }
}
