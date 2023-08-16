import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/testing/bloc/test_bloc/test_bloc.dart';

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
    return FilledButton(
      onPressed: isActive
          ? () => context.read<TestBloc>().add(isFinishing
              ? const TestEvent.finishRequested()
              : const TestEvent.selectNextQuestion())
          : null,
      style: const ButtonStyle(
        minimumSize: MaterialStatePropertyAll(Size(156, 41)),
      ),
      child: Text(isFinishing ? "Завершить" : "Далее"),
    );
  }
}
