import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gip_test/training/bloc/test_bloc.dart';
import 'package:gip_test/training/ui/pages/test_page/widgets/question_map_item.dart';

class QuestionMap extends StatelessWidget {
  const QuestionMap({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TestBloc, TestState>(
      builder: (context, state) => ListView.separated(
        padding: const EdgeInsets.only(top: 8, bottom: 8),
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemCount: state.questions.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => QuestionMapItem(
          index: index,
          isSelected: state.selectedIndex == index,
          isAnsweredCorrectly: state.questions[index].isAnsweredCorrectly,
          onPressed: () => context.read<TestBloc>().add(TestEvent.selected(index: index)),
        ),
      ),
    );
  }
}
