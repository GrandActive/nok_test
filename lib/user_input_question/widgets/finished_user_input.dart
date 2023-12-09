import 'package:flutter/material.dart';
import 'package:nok_test/common/widgets/answer_result.dart';
import 'package:nok_test/styles/colors.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

class FinishedUserInput extends StatelessWidget {
  const FinishedUserInput({
    super.key,
    required this.question,
    required this.showCorrectness,
    required this.showCorrectAnswer,
    required this.showResult,
  });

  final TestUserInputQuestion question;
  final bool showCorrectness;
  final bool showCorrectAnswer;
  final bool showResult;

  Color get _borderColor {
    if (question.isAnsweredCorrectly == null || !showCorrectness) {
      return const Color(0xFF7F7F7F);
    } else if (question.isAnsweredCorrectly!) {
      return correctAnswerColor;
    } else {
      return wrongAnswerColor;
    }
  }

  String? get _helperText {
    if (showCorrectAnswer && question.isAnsweredCorrectly == false) {
      return 'Правильный ответ: ${question.source.correctAnswer}';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showResult) ...[
          AnswerResult(isAnsweredCorrectly: question.isAnsweredCorrectly!),
          const SizedBox(height: 24),
        ],
        TextField(
          controller: TextEditingController(text: question.userAnswer ?? "Нет ответа"),
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
