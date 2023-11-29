import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/navigation.dart';
import 'package:nok_test/testing/bloc/testing_bloc/testing_bloc.dart';
import 'package:nok_test/testing/ui/pages/testing_page/widgets/question_map_item.dart';

class TestResultsGrid extends StatelessWidget {
  const TestResultsGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TestingBloc, TestingState>(
      builder: (context, state) {
        return ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 232),
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 8,
            runSpacing: 8,
            children: List.generate(
              state.questions.length,
              (index) => QuestionMapItem(
                showAnswerCorrectness: true,
                size: 40,
                index: index,
                isSelected: state.selectedIndex == index && !state.isFinished,
                isAnsweredCorrectly: state.questions[index].isAnsweredCorrectly,
                onPressed: () {
                  context.router.push(QuestionReviewRoute(
                    question: state.questions[index],
                    index: index,
                    mode: state.mode,
                  ));
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
