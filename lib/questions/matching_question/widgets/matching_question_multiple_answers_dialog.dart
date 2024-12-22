import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nok_test/common/widgets/app_filled_button.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/utils/list_separated_extension.dart';

Future<List<PossibleAnswer>?> showMatchingQuestionMultipleAnswersDialog(
  BuildContext context,
  List<PossibleAnswer> answers,
  List<int> selectedAnswers,
) {
  return showDialog<List<PossibleAnswer>>(
    context: context,
    builder: (context) {
      return _MatchingQuestionMultipleAnswersDialog(
        answers: answers,
        selectedAnswers: selectedAnswers,
      );
    },
  );
}

class _MatchingQuestionMultipleAnswersDialog extends StatefulWidget {
  const _MatchingQuestionMultipleAnswersDialog({
    required this.answers,
    required this.selectedAnswers,
  });

  final List<PossibleAnswer> answers;
  final List<int> selectedAnswers;

  @override
  State<_MatchingQuestionMultipleAnswersDialog> createState() =>
      _MatchingQuestionMultipleAnswersDialogState();
}

class _MatchingQuestionMultipleAnswersDialogState
    extends State<_MatchingQuestionMultipleAnswersDialog> {
  late final List<PossibleAnswer> _selectedAnswers = widget.selectedAnswers
      .map((e) => widget.answers.firstWhere((element) => element.index == e))
      .toList();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: const BorderSide(color: Color(0xFF7F7F7F), width: 1),
      ),
      content: SingleChildScrollView(
        child: Column(
          children: widget.answers
              .map<Widget>((a) => CheckboxListTile(
                    title: Text(
                      a.text,
                      style: TextStyle(fontSize: 16),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _selectedAnswers.contains(a),
                    onChanged: (checked) {
                      setState(() {
                        if (checked ?? false) {
                          _selectedAnswers.add(a);
                          _selectedAnswers.sort((a, b) => a.index - b.index);
                        } else {
                          _selectedAnswers.remove(a);
                        }
                      });
                    },
                    fillColor: WidgetStateProperty.resolveWith(
                      (states) {
                        if (states.contains(WidgetState.selected)) return const Color(0xff277ADB);
                        return Colors.transparent;
                      },
                    ),
                    checkboxShape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                    ),
                    side: BorderSide(width: 1, color: const Color(0xff277ADB)),
                    contentPadding: const EdgeInsets.only(right: 8),
                  ))
              .toList()
              .separatedBy(const Divider(
                color: Color(0xFFD0D0D0),
                indent: 16,
                endIndent: 16,
                height: 0,
              )),
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        AppFilledButton(
          child: Text('Ок'),
          onPressed: () {
            context.router.maybePop(_selectedAnswers);
          },
        )
      ],
    );
  }
}
