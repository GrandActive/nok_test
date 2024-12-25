import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/navigation.dart';
import 'package:nok_test/question_list/bloc/question_list_bloc/question_list_bloc.dart';
import 'package:nok_test/styles/app_text_styles.dart';
import 'package:nok_test/testing/data/model/question.dart';

class QuestionListItem extends StatelessWidget {
  const QuestionListItem({
    super.key,
    required this.question,
    required this.index,
  });

  final Question question;
  final int index;

  String _getQuestionText(Question question) {
    return switch (question) {
      SelectionQuestion() => question.text,
      SequenceQuestion() => question.title,
      UserInputQuestion() => question.text,
      MatchingQuestion() => question.text,
    };
  }

  IconData _getQuestionTypeIcon(Question question) {
    return switch (question) {
      SelectionQuestion() => question.correctAnswerIds.length > 1
          ? Icons.check_box_outlined
          : Icons.radio_button_checked_outlined,
      SequenceQuestion() => Icons.low_priority_outlined,
      UserInputQuestion() => Icons.mode_edit_outline_outlined,
      MatchingQuestion() => Icons.format_list_bulleted_outlined,
    };
  }

  @override
  Widget build(BuildContext context) {
    final questionNumber = index + 1;

    return Card.outlined(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      shadowColor: Color(0xFFDBE9F9).withOpacity(0.3),
      elevation: 4,
      child: InkWell(
        onTap: () {
          context
            ..read<QuestionListBloc>().add(QuestionListEvent.questionSelected(index: index))
            ..router.push(QuestionViewerRoute());
        },
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(_getQuestionTypeIcon(question), color: const Color(0xFF464646)),
                  SizedBox(width: 8),
                  Text('Вопрос $questionNumber', style: AppTextStyles.body1),
                ],
              ),
              SizedBox(height: 8),
              Text(_getQuestionText(question)),
            ],
          ),
        ),
      ),
    );
  }
}
