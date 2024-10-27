import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/questions/base/question_bloc/question_bloc.dart';
import 'package:nok_test/questions/matching_question/matching_question_bloc/matching_question_bloc.dart';
import 'package:nok_test/questions/matching_question/widgets/matching_question_answers_dialog.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/utils/first_where_or_null.dart';

class QuestionAnswerPair extends StatelessWidget {
  const QuestionAnswerPair({
    super.key,
    required this.question,
    required this.answers,
    required this.selectedAnswers,
  });

  final PossibleAnswer question;
  final List<PossibleAnswer> answers;
  final Map<int, int?> selectedAnswers;

  void _setValue(BuildContext context, PossibleAnswer? value) {
    final answer = Map<int, int?>.from(selectedAnswers);
    if (value != null) {
      final oldValueKey = answer.entries.firstWhereOrNull((e) => e.value == value.index)?.key;
      if (oldValueKey != null) {
        answer[oldValueKey] = null;
      }
    }
    answer[question.index] = value?.index;
    context.read<MatchingQuestionBloc>().add(QuestionEvent.answerSelected(answer: answer));
  }

  @override
  Widget build(BuildContext context) {
    final selectedAnswer =
        answers.firstWhereOrNull((a) => a.index == selectedAnswers[question.index]);

    final answerText = selectedAnswer == null
        ? const Text('Выберите ответ', style: TextStyle(color: Color(0xFF9D9D9D)))
        : Text(selectedAnswer.text);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question.text,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 8),
        DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            border: Border.all(color: const Color(0xFF7F7F7F), width: 1),
          ),
          child: InkWell(
            onTap: () async {
              final selectedAnswer = await showMatchingQuestionAnswersDialog(context, answers);
              if (context.mounted && selectedAnswer != null) {
                _setValue(context, selectedAnswer);
              }
            },
            child: Container(
              constraints: const BoxConstraints(minHeight: 56),
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: answerText),
                  const SizedBox(width: 16),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
