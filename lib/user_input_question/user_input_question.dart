import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/widgets/submit_button.dart';
import 'package:nok_test/user_input_question/user_input_question_bloc/user_input_question_bloc.dart';
import 'package:nok_test/user_input_question/widgets/widgets.dart';

class UserInputQuestion extends StatelessWidget {
  const UserInputQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserInputQuestionBloc, UserInputQuestionState>(
      builder: (context, state) {
        if (state is Initial) return const SizedBox.shrink();

        final question = state.question as TestUserInputQuestion;

        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 36, top: 24),
            child: Column(
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
                const SizedBox(height: 40),
                if (state is Answered) FinishedUserInput(question: question) else const UserInput(),
                const SizedBox(height: 40),
                SubmitButton(
                  isActive: state.selectedAnswers != null,
                  isFinishing: state.isLast,
                  isSubmitting: state.mode == TestMode.training && state is! Answered,
                  onSubmit: () => context
                      .read<UserInputQuestionBloc>()
                      .add(const UserInputQuestionEvent.answerSubmitted()),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
