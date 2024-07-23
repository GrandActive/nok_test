import 'package:flutter/material.dart';
import 'package:nok_test/questions/matching_question/matching_question.dart';
import 'package:nok_test/questions/selection_question/selection_question.dart';
import 'package:nok_test/questions/sequence_question/sequence_question.dart';
import 'package:nok_test/questions/user_input_question/user_input_question.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({
    super.key,
    required this.mode,
    required this.question,
    this.isLast = false,
  });

  final TestMode mode;
  final TestQuestion question;
  final bool isLast;

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> with AutomaticKeepAliveClientMixin {
  final _controller = ScrollController();

  void _scrollToTop() {
    _controller.animateTo(
      0,
      duration: Durations.short3,
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final question = widget.question;
    return SingleChildScrollView(
      controller: _controller,
      child: switch (question) {
        TestSelectionQuestion() => SelectionQuestion(
            mode: widget.mode,
            question: question,
            isLast: widget.isLast,
            onAnswered: _scrollToTop,
          ),
        TestUserInputQuestion() => UserInputQuestion(
            mode: widget.mode,
            question: question,
            isLast: widget.isLast,
            onAnswered: _scrollToTop,
          ),
        TestSequenceQuestion() => SequenceQuestion(
            mode: widget.mode,
            question: question,
            isLast: widget.isLast,
            onAnswered: _scrollToTop,
          ),
        TestMatchingQuestion() => MatchingQuestion(
            mode: widget.mode,
            question: question,
            isLast: widget.isLast,
            onAnswered: _scrollToTop,
          ),
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
