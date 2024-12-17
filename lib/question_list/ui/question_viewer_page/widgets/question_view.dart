import 'package:flutter/material.dart';
import 'package:nok_test/questions/matching_question/finished_matching_question.dart';
import 'package:nok_test/questions/selection_question/finished_selection_question.dart';
import 'package:nok_test/questions/sequence_question/finished_sequence_question.dart';
import 'package:nok_test/questions/user_input_question/finished_user_input_question.dart';
import 'package:nok_test/testing/data/model/question.dart';

class QuestionView extends StatelessWidget {
  const QuestionView({
    super.key,
    required this.question,
  });

  final Question question;

  @override
  Widget build(BuildContext context) {
    final q = question;
    return switch (q) {
      SelectionQuestion() => FinishedSelectionQuestion(
          question: q,
          selectedAnswers: q.correctAnswerIds,
          showResult: false,
        ),
      SequenceQuestion() => FinishedSequenceQuestion(
          question: q,
          selectedAnswers: q.correctAnswers,
          showResult: false,
        ),
      UserInputQuestion() => FinishedUserInputQuestion(
          question: q,
          selectedAnswer: q.correctAnswer,
          isAnsweredCorrectly: true,
          showResult: false,
        ),
      MatchingQuestion() => FinishedMatchingQuestion(
          question: q,
          selectedAnswer: q.correctMatch,
          showResult: false,
        ),
    };
  }
}
