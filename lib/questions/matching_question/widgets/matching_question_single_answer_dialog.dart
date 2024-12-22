import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/utils/list_separated_extension.dart';

Future<PossibleAnswer?> showMatchingQuestionSingleAnswerDialog(
  BuildContext context,
  List<PossibleAnswer> answers,
) {
  return showDialog<PossibleAnswer>(
    context: context,
    builder: (context) {
      return _MatchingQuestionSingleAnswerDialog(answers: answers);
    },
  );
}

class _MatchingQuestionSingleAnswerDialog extends StatelessWidget {
  const _MatchingQuestionSingleAnswerDialog({
    required this.answers,
  });

  final List<PossibleAnswer> answers;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: const BorderSide(color: Color(0xFF7F7F7F), width: 1),
      ),
      children: answers
          .map<Widget>((a) => SimpleDialogOption(
                padding: const EdgeInsets.all(16),
                onPressed: () {
                  context.router.maybePop(a);
                },
                child: Text(a.text),
              ))
          .toList()
          .separatedBy(const Divider(
            color: Color(0xFFD0D0D0),
            indent: 16,
            endIndent: 16,
            height: 0,
          )),
    );
  }
}
