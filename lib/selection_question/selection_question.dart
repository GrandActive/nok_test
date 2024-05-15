import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/selection_question/selection_question_bloc/selection_question_bloc.dart';
import 'package:nok_test/testing/bloc/testing_bloc/testing_bloc.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/pages/testing_page/widgets/question_text.dart';
import 'package:nok_test/testing/ui/widgets/submit_button.dart';

import 'widgets/widgets.dart';

class SelectionQuestion extends StatelessWidget {
  const SelectionQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<TestingBloc, TestingState>(
      listenWhen: (previous, current) => previous.selectedIndex != current.selectedIndex,
      listener: (context, state) {
        context.read<SelectionQuestionBloc>().add(const SelectionQuestionEvent.putOnHold());
      },
      child: BlocBuilder<SelectionQuestionBloc, SelectionQuestionState>(
        builder: (context, state) {
          if (state is Initial) return const SizedBox.shrink();

          final question = state.question as TestSelectionQuestion;
          final selectedAnswers = state.selectedAnswers ?? {};

          Set<int> answersToSelect;
          if (question.userAnswers?.isNotEmpty ?? false) {
            answersToSelect = Set.from(question.userAnswers!);
          } else {
            answersToSelect = Set.from(selectedAnswers);
          }

          return ListView(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 36),
            children: [
              QuestionText(text: question.source.text),
              const SizedBox(height: 24),
              SelectionAnswerList(
                possibleAnswers: question.source.possibleAnswers,
                selectedIndices: answersToSelect,
                correctAnswers: question.source.correctAnswerIds,
                showCorrectnessOfSelected: state is Answered,
                showCorrectAnswer: state is Answered,
                showResult: state is Answered,
                disabled: state is Answered,
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
      ),
    );
  }
}
