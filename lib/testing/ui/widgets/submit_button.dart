import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/testing/bloc/testing_bloc/testing_bloc.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.isActive,
    required this.isFinishing,
    this.isSubmitting = false,
    this.onSubmit,
  });

  final bool isActive;
  final bool isFinishing;
  final bool isSubmitting;
  final VoidCallback? onSubmit;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: isActive
          ? isSubmitting
              ? onSubmit
              : () => context.read<TestingBloc>().add(
                    isFinishing
                        ? const TestingEvent.finishRequested()
                        : const TestingEvent.selectNextQuestion(),
                  )
          : null,
      style: const ButtonStyle(
        minimumSize: MaterialStatePropertyAll(Size(156, 41)),
      ),
      child: Text(
        isSubmitting
            ? "Ответить"
            : isFinishing
                ? "Завершить"
                : "Далее",
      ),
    );
  }
}
