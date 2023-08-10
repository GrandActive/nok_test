import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/testing/bloc/test_bloc/test_bloc.dart';
import 'package:nok_test/testing/ui/pages/question_page/question_page.dart';

class QuestionsPager extends StatelessWidget {
  QuestionsPager({super.key});

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TestBloc, TestState>(
      listenWhen: (previous, current) =>
          previous.selectedIndex != current.selectedIndex && current.selectedIndex != null,
      listener: (context, state) {
        pageController.animateToPage(
          state.selectedIndex!,
          duration: const Duration(milliseconds: 300),
          curve: Curves.ease,
        );
      },
      buildWhen: (previous, current) =>
          previous.questions != current.questions && !current.isFinished,
      builder: (context, state) {
        return PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: state.questions.indexed
              .map((question) => QuestionPage(
                    question: question.$2,
                    isLast: question.$1 == state.questions.length - 1,
                  ))
              .toList(growable: false),
        );
      },
    );
  }
}
