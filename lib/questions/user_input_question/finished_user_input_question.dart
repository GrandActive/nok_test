import 'package:flutter/material.dart';
import 'package:nok_test/questions/user_input_question/widgets/finished_user_input.dart';
import 'package:nok_test/testing/data/model/question.dart';

class FinishedUserInputQuestion extends StatelessWidget {
  const FinishedUserInputQuestion({
    super.key,
    required this.question,
    required this.selectedAnswer,
    required this.showResult,
    this.showCorrectAnswer = true,
    this.isAnsweredCorrectly,
  });

  final UserInputQuestion question;
  final bool showCorrectAnswer;
  final String? selectedAnswer;
  final bool? isAnsweredCorrectly;
  final bool showResult;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 36, top: 24),
        child: Column(
          children: [
            Text(
              "${question.title}:",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              question.text,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 40),
            FinishedUserInput(
              question: question,
              showCorrectness: selectedAnswer != null,
              showResult: showResult,
              showCorrectAnswer: showCorrectAnswer,
              isAnsweredCorrectly: isAnsweredCorrectly,
              selectedAnswer: selectedAnswer,
            ),
          ],
        ),
      ),
    );
  }
}
