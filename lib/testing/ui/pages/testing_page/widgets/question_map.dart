import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/testing/bloc/testing_bloc/testing_bloc.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/ui/pages/testing_page/widgets/question_map_item.dart';

class QuestionMap extends StatefulWidget {
  const QuestionMap({super.key});

  @override
  State<QuestionMap> createState() => _QuestionMapState();
}

class _QuestionMapState extends State<QuestionMap> {
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
    return BlocListener<TestingBloc, TestingState>(
      listenWhen: (previous, current) => previous.selectedIndex != current.selectedIndex,
      listener: (context, state) {
        final screenWidth = MediaQuery.of(context).size.width;
        if (state.selectedIndex != null) _scrollToIndex(state.selectedIndex!, screenWidth);
      },
      child: BlocBuilder<TestingBloc, TestingState>(
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
              context.read<TestingBloc>().add(TestingEvent.selected(index: index));
            },
            size: _itemSize,
          ),
        ),
      ),
    );
  }
}
