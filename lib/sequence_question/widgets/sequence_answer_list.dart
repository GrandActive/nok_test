import 'package:flutter/material.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';

import 'sequence_answer_list_item.dart';

class SequenceAnswerList extends StatelessWidget {
  const SequenceAnswerList({
    super.key,
    required this.selectedAnswers,
    required this.onReorder,
  });

  final List<PossibleAnswer> selectedAnswers;
  final void Function(int oldIndex, int newIndex) onReorder;

  @override
  Widget build(BuildContext context) {
    final listItems = selectedAnswers
        .map((answer) => SequenceAnswerListItem(key: ValueKey(answer), answer: answer))
        .toList(growable: false);

    return ReorderableListView(
      proxyDecorator: (child, index, animation) {
        final answer = selectedAnswers[index];
        return SequenceAnswerListItem(
          key: ValueKey(answer),
          answer: answer,
          isDragged: true,
        );
      },
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      onReorder: (oldIndex, newIndex) {
        if (newIndex > oldIndex) newIndex -= 1;
        onReorder(oldIndex, newIndex);
      },
      children: listItems,
    );
  }
}
