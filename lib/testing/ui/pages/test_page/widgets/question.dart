import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/testing/bloc/test_bloc.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/answer_list.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/question_text.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/submit_button.dart';

class Question extends StatelessWidget {
  const Question({super.key, required this.question});

  final TestQuestion question;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TestBloc, TestState>(
      buildWhen: (_, current) => !current.isFinished,
      builder: (context, state) {
        final selectedQuestion = state.questions[state.selectedIndex!];

        Set<int> selectedAnswers;
        if (selectedQuestion.userAnswers.isNotEmpty) {
          selectedAnswers = Set.from(selectedQuestion.userAnswers);
        } else {
          selectedAnswers = Set.from(state.selectedAnswers);
        }

        final isMultipleAnswers = selectedQuestion.source.correctAnswerIds.length > 1;

        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 36, top: 24),
            child: Column(
              children: [
                QuestionText(text: question.source.text),
                const SizedBox(height: 40),
                AnswerList(
                  possibleAnswers: selectedQuestion.source.possibleAnswers,
                  selectedIndices: selectedAnswers,
                  isMultipleAnswers: isMultipleAnswers,
                  isActive: !state.isFinished,
                  isAnsweredCorrectly:
                      state.isFinished ? selectedQuestion.isAnsweredCorrectly : null,
                  shouldShowCorrectness: state.isFinished,
                ),
                const SizedBox(height: 40),
                SubmitButton(
                  isLastQuestion: state.selectedIndex == state.questions.length - 1,
                  areAnswersSelected: selectedAnswers.isNotEmpty,
                  isTestFinished: state.isFinished,
                  hasUnansweredQuestions: state.questions.any((q) => q.isAnsweredCorrectly == null),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
