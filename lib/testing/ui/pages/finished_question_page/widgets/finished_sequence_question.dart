import 'package:flutter/material.dart';
import 'package:nok_test/styles/colors.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

class FinishedSequenceQuestion extends StatelessWidget {
  const FinishedSequenceQuestion({
    super.key,
    required this.question,
  });

  final TestSequenceQuestion question;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 24, right: 16, bottom: 36),
        child: Column(
          children: [
            Text(
              question.source.title,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                ...question.userAnswer!.indexed.map((a) {
                  final answerOrder = a.$1;
                  final answer = question.source.answers.firstWhere((e) => e.index == a.$2);

                  Color borderColor;
                  if (question.isAnsweredCorrectly == null) {
                    borderColor = const Color(0xFFDBE9F9);
                  } else if (question.source.correctOrder[answerOrder] == answer.index) {
                    borderColor = correctAnswerColor;
                  } else {
                    borderColor = wrongAnswerColor;
                  }

                  return Material(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        dense: true,
                        title: Text(answer.text, style: const TextStyle(fontSize: 16)),
                        shape: RoundedRectangleBorder(
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                          side: BorderSide(
                            color: borderColor,
                          ),
                        ),
                      ),
                    ),
                  );
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}
