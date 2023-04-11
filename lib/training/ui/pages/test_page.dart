import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gip_test/training/bloc/test_bloc.dart';
import 'package:gip_test/training/ui/widgets/questions_pager.dart';

import '../widgets/question_map.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Внимание, вопрос'),
      ),
      body: BlocBuilder<TestBloc, TestState>(
        buildWhen: (_, current) => !current.isFinished,
        builder: (context, state) {
          if (state.errorMessage != null) {
            return Center(child: Text(state.errorMessage!));
          }

          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                height: 48,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: const QuestionMap(),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: QuestionsPager(),
              ),
            ],
          );
        },
      ),
    );
  }
}
