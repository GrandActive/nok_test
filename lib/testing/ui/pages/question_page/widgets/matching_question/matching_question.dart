import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/testing/bloc/question_bloc/question_bloc.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/pages/question_page/widgets/matching_question/widgets/widgets.dart';
import 'package:nok_test/testing/ui/widgets/submit_button.dart';

class MatchingQuestion extends StatelessWidget {
  const MatchingQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionBloc, QuestionState>(
      builder: (context, state) {
        if (state is Initial) return const SizedBox.shrink();

        final question = state.question as TestMatchingQuestion;
        final selectedAnswers = state.selectedAnswers as Map<int, int?>;

        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, top: 24, right: 16, bottom: 40),
            child: Column(
              children: [
                Text(
                  question.source.text,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 40),
                if (state is Answered)
                  FinishedMatchingAnswerList(question: question, answer: selectedAnswers)
                else
                  MatchingAnswerList(question: question, selectedAnswers: selectedAnswers),
                const SizedBox(height: 40),
                SubmitButton(
                  isActive: selectedAnswers.values.any((e) => e != null),
                  isFinishing: state.isLast,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
