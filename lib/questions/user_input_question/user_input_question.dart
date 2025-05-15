import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/injection.dart';
import 'package:nok_test/questions/base/question_bloc/question_bloc.dart';
import 'package:nok_test/questions/user_input_question/user_input_question_bloc/user_input_question_bloc.dart';
import 'package:nok_test/testing/bloc/testing_bloc/testing_bloc.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/widgets/submit_button.dart';

import 'widgets/widgets.dart';

class UserInputQuestion extends StatelessWidget {
  const UserInputQuestion({
    super.key,
    required this.mode,
    required this.question,
    required this.isLast,
    required this.onAnswered,
  });

  final TestMode mode;
  final TestUserInputQuestion question;
  final bool isLast;
  final VoidCallback onAnswered;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UserInputQuestionBloc>(
        param1: question.source.correctAnswer,
      )..add(QuestionEvent.started(
          mode: mode,
          question: question,
          isLast: isLast,
        )),
      child: BlocListener<TestingBloc, TestingState>(
        listenWhen: (previous, current) => previous.selectedIndex != current.selectedIndex,
        listener: (context, state) {
          context.read<UserInputQuestionBloc>().add(const QuestionEvent.putOnHold());
        },
        child: BlocConsumer<UserInputQuestionBloc, QuestionState<TestUserInputQuestion, String?>>(
          listener: (context, state) {
            state.mapOrNull(
              answered: (_) => onAnswered(),
            );
          },
          builder: (context, state) {
            if (state is Initial) return const SizedBox.shrink();

            final question = state.question!;

            return Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 36, top: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${question.source.title}:",
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    question.source.text,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 24),
                  if (state is Answered)
                    FinishedUserInput(
                      question: question.source,
                      showCorrectness: true,
                      showCorrectAnswer: true,
                      showResult: true,
                      isAnsweredCorrectly: question.isAnsweredCorrectly,
                      selectedAnswer: question.userAnswer,
                    )
                  else
                    const UserInput(),
                  const SizedBox(height: 40),
                  SubmitButton(
                    isActive: state.selectedAnswers != null,
                    isFinishing: state.isLast,
                    isSubmitting: state.mode == TestMode.training && state is! Answered,
                    onSubmit: () => context
                        .read<UserInputQuestionBloc>()
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
