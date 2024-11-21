import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/question_list/bloc/question_list_bloc/question_list_bloc.dart';

class QuestionNavButtons extends StatelessWidget {
  const QuestionNavButtons({
    super.key,
    required this.questionNumber,
    required this.showPrevButton,
    required this.showNextButton,
  });

  final int questionNumber;
  final bool showPrevButton;
  final bool showNextButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        showPrevButton
            ? TextButton.icon(
                onPressed: () {
                  context.read<QuestionListBloc>().add(QuestionListEvent.prevQuestionRequested());
                },
                label: Text('Вопрос ${questionNumber - 1}'),
                icon: Icon(Icons.arrow_back),
              )
            : SizedBox.shrink(),
        showNextButton
            ? TextButton.icon(
                onPressed: () {
                  context.read<QuestionListBloc>().add(QuestionListEvent.nextQuestionRequested());
                },
                label: Icon(Icons.arrow_forward),
                icon: Text('Вопрос ${questionNumber + 1}'),
              )
            : SizedBox.shrink()
      ],
    );
  }
}
