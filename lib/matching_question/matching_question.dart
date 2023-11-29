import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/matching_question/matching_question_bloc/matching_question_bloc.dart';
import 'package:nok_test/matching_question/widgets/widgets.dart';
import 'package:nok_test/testing/bloc/testing_bloc/testing_bloc.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/ui/widgets/submit_button.dart';

class MatchingQuestion extends StatelessWidget {
  const MatchingQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<TestingBloc, TestingState>(
      listenWhen: (previous, current) => previous.selectedIndex != current.selectedIndex,
      listener: (context, state) {
        context.read<MatchingQuestionBloc>().add(const MatchingQuestionEvent.putOnHold());
      },
      child: BlocBuilder<MatchingQuestionBloc, MatchingQuestionState>(
        builder: (context, state) {
          if (state is Initial) return const SizedBox.shrink();

          final question = state.question!;
          final selectedAnswers = state.selectedAnswers!;

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 24, right: 16, bottom: 40),
              child: Column(
                children: [
                  Text(
                    question.source.text,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 24),
                  if (state is Answered)
                    FinishedMatchingAnswerList(question: question, answer: selectedAnswers)
                  else
                    MatchingAnswerList(question: question, selectedAnswers: selectedAnswers),
                  const SizedBox(height: 40),
                  SubmitButton(
                    isActive: selectedAnswers.values.any((e) => e != null),
                    isFinishing: state.isLast,
                    isSubmitting: state.mode == TestMode.training && state is! Answered,
                    onSubmit: () => context
                        .read<MatchingQuestionBloc>()
                        .add(const MatchingQuestionEvent.answerSubmitted()),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
