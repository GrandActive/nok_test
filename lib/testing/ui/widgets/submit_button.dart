import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/testing/bloc/question_bloc/question_bloc.dart';
import 'package:nok_test/testing/bloc/test_bloc/test_bloc.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.isActive,
    required this.isFinishing,
  });

  final bool isActive;
  final bool isFinishing;

  @override
  Widget build(BuildContext context) {
    final isSubmittingAnswer = context.read<TestBloc>().state.mode == TestMode.training &&
        context.read<QuestionBloc>().state is! Answered;

    return FilledButton(
      onPressed: isActive
          ? isSubmittingAnswer
              ? () => context.read<QuestionBloc>().add(const QuestionEvent.answerSubmitted())
              : () => context.read<TestBloc>().add(
                    isFinishing
                        ? const TestEvent.finishRequested()
                        : const TestEvent.selectNextQuestion(),
                  )
          : null,
      style: const ButtonStyle(
        minimumSize: MaterialStatePropertyAll(Size(156, 41)),
      ),
      child: Text(
        isSubmittingAnswer
            ? "Ответить"
            : isFinishing
                ? "Завершить"
                : "Далее",
      ),
    );
  }
}
