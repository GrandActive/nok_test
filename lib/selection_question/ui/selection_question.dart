import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/selection_question/selection_question_bloc/selection_question_bloc.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/pages/testing_page/widgets/question_text.dart';
import 'package:nok_test/testing/ui/widgets/submit_button.dart';

import 'widgets/widgets.dart';

class SelectionQuestion extends StatelessWidget {
  const SelectionQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectionQuestionBloc, SelectionQuestionState>(
      builder: (context, state) {
        if (state is Initial) return const SizedBox.shrink();

        final question = state.question as TestSelectionQuestion;
        final selectedAnswers = state.selectedAnswers as Set<int>? ?? {};

        Set<int> answersToSelect;
        if (question.userAnswers?.isNotEmpty ?? false) {
          answersToSelect = Set.from(question.userAnswers!);
        } else {
          answersToSelect = Set.from(selectedAnswers);
        }

        final isMultipleAnswers = question.source.correctAnswerIds.length > 1;
        final shouldShowCorrectness = state is Answered;
        final isDisabled = state is Answered;

        return ListView(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 36),
          children: [
            QuestionText(text: question.source.text),
            const SizedBox(height: 40),
            isMultipleAnswers
                ? MultipleAnswerList(
                    possibleAnswers: question.source.possibleAnswers,
                    selectedIndices: answersToSelect,
                    shouldShowCorrectness: shouldShowCorrectness,
                    correctAnswers: question.source.correctAnswerIds,
                    isDisabled: isDisabled,
                  )
                : SingleAnswerList(
                    possibleAnswers: question.source.possibleAnswers,
                    selectedIndex: answersToSelect.isEmpty ? null : answersToSelect.first,
                    correctAnswer: question.source.correctAnswerIds.first,
                    shouldShowCorrectness: shouldShowCorrectness,
                    isDisabled: isDisabled,
                  ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SubmitButton(
                  isActive: answersToSelect.isNotEmpty,
                  isFinishing: state.isLast,
                  isSubmitting: state.mode == TestMode.training && state is! Answered,
                  onSubmit: () => context
                      .read<SelectionQuestionBloc>()
                      .add(const SelectionQuestionEvent.answerSubmitted()),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
