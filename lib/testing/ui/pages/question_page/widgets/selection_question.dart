import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/testing/bloc/question_bloc/question_bloc.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/answer_list.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/question_text.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/submit_button.dart';

class SelectionQuestion extends StatelessWidget {
  const SelectionQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionBloc, QuestionState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox.shrink(),
          inProgress: (state) {
            final question = state.question as TestSelectionQuestion;
            final selectedAnswers = state.selectedAnswers as Set<int>?;

            Set<int> answersToSelect;
            if (question.userAnswers?.isNotEmpty ?? false) {
              answersToSelect = Set.from(question.userAnswers!);
            } else {
              answersToSelect = Set.from(selectedAnswers ?? {});
            }

            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 36, top: 24),
                child: Column(
                  children: [
                    QuestionText(text: question.source.text),
                    const SizedBox(height: 40),
                    AnswerList(
                      possibleAnswers: question.source.possibleAnswers,
                      selectedIndices: answersToSelect,
                      isMultipleAnswers: question.source.correctAnswerIds.length > 1,
                      isActive: true,
                      isAnsweredCorrectly: null,
                      shouldShowCorrectness: false,
                    ),
                    const SizedBox(height: 40),
                    SubmitButton(
                      isLastQuestion: state.isLast,
                      areAnswersSelected: selectedAnswers?.isNotEmpty ?? false,
                      isTestFinished: false,
                    ),
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
