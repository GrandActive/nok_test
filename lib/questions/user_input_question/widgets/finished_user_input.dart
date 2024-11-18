import 'package:flutter/material.dart';
import 'package:nok_test/common/widgets/answer_result.dart';
import 'package:nok_test/styles/colors.dart';
import 'package:nok_test/testing/data/model/question.dart';

class FinishedUserInput extends StatelessWidget {
  const FinishedUserInput({
    super.key,
    required this.question,
    required this.showCorrectness,
    required this.showCorrectAnswer,
    required this.showResult,
    required this.isAnsweredCorrectly,
    required this.selectedAnswer,
  });

  final UserInputQuestion question;
  final bool showCorrectness;
  final bool showCorrectAnswer;
  final bool showResult;
  final bool? isAnsweredCorrectly;
  final String? selectedAnswer;

  Color get _borderColor {
    if (isAnsweredCorrectly == null || !showCorrectness) {
      return const Color(0xFF7F7F7F);
    } else if (isAnsweredCorrectly!) {
      return correctAnswerColor;
    } else {
      return wrongAnswerColor;
    }
  }

  String? get _helperText {
    if (showCorrectAnswer && isAnsweredCorrectly == false) {
      return 'Правильный ответ: ${question.correctAnswer}';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showResult) ...[
          AnswerResult(isAnsweredCorrectly: isAnsweredCorrectly ?? false),
          const SizedBox(height: 24),
        ],
        TextField(
          controller: TextEditingController(text: selectedAnswer ?? "Нет ответа"),
          enabled: false,
          style: const TextStyle(color: Color(0xFF464646)),
          decoration: InputDecoration(
            isDense: true,
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: _borderColor),
            ),
            helperText: _helperText,
            helperMaxLines: 3,
            helperStyle: const TextStyle(color: Color(0xFF464646), fontSize: 14),
          ),
        ),
      ],
    );
  }
}
