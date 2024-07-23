import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/injection.dart';
import 'package:nok_test/questions/base/question_bloc/question_bloc.dart';
import 'package:nok_test/questions/matching_question/matching_question_bloc/matching_question_bloc.dart';
import 'package:nok_test/testing/bloc/testing_bloc/testing_bloc.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/widgets/submit_button.dart';

import 'widgets/widgets.dart';

class MatchingQuestion extends StatelessWidget {
  const MatchingQuestion({
    super.key,
    required this.mode,
    required this.question,
    required this.isLast,
    required this.onAnswered,
  });

  final TestMode mode;
  final TestMatchingQuestion question;
  final bool isLast;
  final VoidCallback onAnswered;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MatchingQuestionBloc>(
        param1: question.source.correctMatch,
      )..add(QuestionEvent.started(
          mode: mode,
          question: question,
          isLast: isLast,
        )),
      child: BlocListener<TestingBloc, TestingState>(
        listenWhen: (previous, current) => previous.selectedIndex != current.selectedIndex,
        listener: (context, state) {
          context.read<MatchingQuestionBloc>().add(const QuestionEvent.putOnHold());
        },
        child: BlocConsumer<MatchingQuestionBloc, QuestionState>(
          listener: (context, state) {
            state.mapOrNull(
              answered: (_) => onAnswered(),
            );
          },
          builder: (context, state) {
            if (state is Initial) return const SizedBox.shrink();

            final question = state.question!;
            final selectedAnswers = state.selectedAnswers!;

            return Padding(
              padding: const EdgeInsets.only(left: 16, top: 24, right: 16, bottom: 40),
              child: Column(
                children: [
                  Text(
                    question.source.text,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 24),
                  if (state is Answered)
                    FinishedMatchingAnswerList(
                      question: question,
                      answer: selectedAnswers,
                      showCorrectness: true,
                      showCorrectAnswer: true,
                      showResult: true,
                    )
                  else
                    MatchingAnswerList(question: question, selectedAnswers: selectedAnswers),
                  const SizedBox(height: 40),
                  SubmitButton(
                    isActive: selectedAnswers.values.any((e) => e != null),
                    isFinishing: state.isLast,
                    isSubmitting: state.mode == TestMode.training && state is! Answered,
                    onSubmit: () => context
                        .read<MatchingQuestionBloc>()
                        .add(const QuestionEvent.answerSubmitted()),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
