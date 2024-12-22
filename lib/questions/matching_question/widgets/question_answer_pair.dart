import 'package:flutter/material.dart';
import 'package:nok_test/questions/matching_question/widgets/matching_question_multiple_answers_dialog.dart';
import 'package:nok_test/questions/matching_question/widgets/matching_question_single_answer_dialog.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/utils/list_separated_extension.dart';

class QuestionAnswerPair extends StatelessWidget {
  const QuestionAnswerPair({
    super.key,
    required this.question,
    required this.answers,
    required this.selectedAnswers,
    required this.isSingleAnswer,
    required this.onAnswerSelected,
  });

  final PossibleAnswer question;
  final List<PossibleAnswer> answers;
  final List<int>? selectedAnswers;
  final bool isSingleAnswer;
  final ValueSetter<List<PossibleAnswer>?> onAnswerSelected;

  void _showAnswerSelectDialog(BuildContext context) async {
    if (isSingleAnswer) {
      final selectedAnswer = await showMatchingQuestionSingleAnswerDialog(context, answers);
      if (context.mounted && selectedAnswer != null) {
        onAnswerSelected([selectedAnswer]);
      }
    } else {
      final selectedAnswer = await showMatchingQuestionMultipleAnswersDialog(
        context,
        answers,
        selectedAnswers ?? [],
      );
      if (context.mounted && selectedAnswer != null) {
        if (selectedAnswer.isEmpty) {
          onAnswerSelected(null);
        } else {
          onAnswerSelected(selectedAnswer);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final answerText = selectedAnswers == null
        ? const Text('Выберите ответ', style: TextStyle(color: Color(0xFF9D9D9D)))
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: selectedAnswers!
                .map<Widget>((e) {
                  final selectedAnswer = answers.firstWhere((a) => a.index == e);
                  return Text(selectedAnswer.text);
                })
                .toList()
                .separatedBy(SizedBox(height: 8)),
          );

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
            onTap: () {
              _showAnswerSelectDialog(context);
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
