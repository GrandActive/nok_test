import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gip_test/testing/bloc/test_bloc.dart';
import 'package:gip_test/testing/ui/pages/test_page/widgets/question.dart';

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
        return PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          itemCount: state.questions.length,
          itemBuilder: (context, index) => Question(question: state.questions[index]),
        );
      },
    );
  }
}
