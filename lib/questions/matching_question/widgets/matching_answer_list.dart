import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/questions/base/question_bloc/question_bloc.dart';
import 'package:nok_test/questions/matching_question/matching_question_bloc/matching_question_bloc.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
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
  final Map<int, List<int>?> selectedAnswers;

  void _onAnswersSelected(
    BuildContext context,
    PossibleAnswer question,
    List<PossibleAnswer>? answers,
  ) {
    final newSelectedAnswers = Map.of(selectedAnswers);

    if (answers != null) {
      // Remove selected answers from all questions
      // to prevent selection of the same answers in different questions
      for (final answer in answers) {
        for (final qi in newSelectedAnswers.keys) {
          newSelectedAnswers[qi] = newSelectedAnswers[qi]?.where((a) => a != answer.index).toList();
          if (newSelectedAnswers[qi]?.isEmpty ?? false) newSelectedAnswers[qi] = null;
        }
      }
    }

    newSelectedAnswers[question.index] = answers?.map((e) => e.index).toList();
    context
        .read<MatchingQuestionBloc>()
        .add(QuestionEvent.answerSelected(answer: newSelectedAnswers));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: question.source.questions
          .map<Widget>((q) => QuestionAnswerPair(
                question: q,
                answers: question.source.answers,
                selectedAnswers: selectedAnswers[q.index],
                isSingleAnswer: question.source.isSingleAnswer,
                onAnswerSelected: (value) => _onAnswersSelected(context, q, value),
              ))
          .toList()
          .separatedBy(const SizedBox(height: 16)),
    );
  }
}
