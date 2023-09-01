import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/testing/bloc/question_bloc/question_bloc.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/widgets/submit_button.dart';
import 'package:nok_test/utils/list_move_extension.dart';

import 'widgets/widgets.dart';

class SequenceQuestion extends StatelessWidget {
  const SequenceQuestion({super.key});

  void _updateAnswer(
    BuildContext context,
    List<PossibleAnswer> currentAnswerOrder,
    int oldIndex,
    int newIndex,
  ) {
    final answerOrder = List<PossibleAnswer>.from(currentAnswerOrder, growable: false);
    answerOrder.move(oldIndex, newIndex);
    context.read<QuestionBloc>().add(QuestionEvent.answerSelected(answer: answerOrder));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionBloc, QuestionState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox.shrink(),
          inProgress: (state) {
            final question = state.question as TestSequenceQuestion;
            final selectedAnswers =
                state.selectedAnswers as List<PossibleAnswer>? ?? question.source.answers;

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
                    const Text(
                      "Для перетаскивания зажмите вариант ответа",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    SequenceAnswerList(
                      selectedAnswers: selectedAnswers,
                      onReorder: (int oldIndex, int newIndex) =>
                          _updateAnswer(context, selectedAnswers, oldIndex, newIndex),
                    ),
                    const SizedBox(height: 24),
                    SubmitButton(isActive: true, isFinishing: state.isLast),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
