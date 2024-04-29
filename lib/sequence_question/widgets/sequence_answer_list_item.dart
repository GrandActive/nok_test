import 'package:flutter/material.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';

class SequenceAnswerListItem extends StatelessWidget {
  const SequenceAnswerListItem({
    super.key,
    required this.answer,
    this.isDragged = false,
  });

  final PossibleAnswer answer;
  final bool isDragged;

  @override
  Widget build(BuildContext context) {
    final borderColor = isDragged ? const Color(0xFF277ADB) : const Color(0xFFDBE9F9);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Material(
        child: ListTile(
          dense: true,
          title: Text(answer.text, style: const TextStyle(fontSize: 16)),
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            side: BorderSide(color: borderColor),
          ),
        ),
      ),
    );
  }
}
