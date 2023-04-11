import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gip_test/injection.dart';
import 'package:gip_test/training/bloc/test_bloc.dart';
import 'package:gip_test/training/domain/get_random_questions_for_test.dart';

class TestWrapperPage extends StatelessWidget {
  const TestWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TestBloc>(
      create: (context) => TestBloc(getQuestions: getIt.get<GetRandomQuestionsForTest>())
        ..add(const TestEvent.started()),
      child: const AutoRouter(),
    );
  }
}
