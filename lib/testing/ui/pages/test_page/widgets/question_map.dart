import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/testing/bloc/test_bloc/test_bloc.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/ui/pages/test_page/widgets/question_map_item.dart';

class QuestionMap extends StatelessWidget {
  QuestionMap({super.key});

  final _scrollController = ScrollController();

  final double _itemSize = 32;
  final double _separatorSize = 8;

  bool _shouldScroll = true;

  void _scrollToIndex(int index, double screenWidth) {
    if (!_shouldScroll) {
      _shouldScroll = true;
      return;
    }
    final double scroll =
        ((_itemSize + _separatorSize) * index + _separatorSize - screenWidth / 2).toDouble();
    _scrollController.animateTo(
      scroll,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TestBloc, TestState>(
      listenWhen: (previous, current) => previous.selectedIndex != current.selectedIndex,
      listener: (context, state) {
        final screenWidth = MediaQuery.of(context).size.width;
        if (state.selectedIndex != null) _scrollToIndex(state.selectedIndex!, screenWidth);
      },
      child: BlocBuilder<TestBloc, TestState>(
        builder: (context, state) => ListView.separated(
          controller: _scrollController,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          separatorBuilder: (context, index) => SizedBox(width: _separatorSize),
          itemCount: state.questions.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => QuestionMapItem(
            showAnswerCorrectness: state.isFinished || state.mode == TestMode.training,
            index: index,
            isSelected: state.selectedIndex == index,
            isAnsweredCorrectly: state.questions[index].isAnsweredCorrectly,
            onPressed: () {
              _shouldScroll = false;
              context.read<TestBloc>().add(TestEvent.selected(index: index));
            },
            size: _itemSize,
          ),
        ),
      ),
    );
  }
}
