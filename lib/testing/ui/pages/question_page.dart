import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/matching_question/matching_question.dart';
import 'package:nok_test/matching_question/matching_question_bloc/matching_question_bloc.dart';
import 'package:nok_test/selection_question/selection_question_bloc/selection_question_bloc.dart';
import 'package:nok_test/selection_question/ui/selection_question.dart';
import 'package:nok_test/sequence_question/sequence_question.dart';
import 'package:nok_test/sequence_question/sequence_question_bloc/sequence_question_bloc.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/user_input_question/user_input_question.dart';
import 'package:nok_test/user_input_question/user_input_question_bloc/user_input_question_bloc.dart';

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
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final question = widget.question;
    return switch (question) {
      TestSelectionQuestion() => BlocProvider(
          create: (context) => SelectionQuestionBloc()
            ..add(SelectionQuestionEvent.started(
              mode: widget.mode,
              question: question,
              isLast: widget.isLast,
            )),
          child: const SelectionQuestion(),
        ),
      TestUserInputQuestion() => BlocProvider(
          create: (context) => UserInputQuestionBloc()
            ..add(UserInputQuestionEvent.started(
              mode: widget.mode,
              question: question,
              isLast: widget.isLast,
            )),
          child: const UserInputQuestion(),
        ),
      TestSequenceQuestion() => BlocProvider(
          create: (context) => SequenceQuestionBloc()
            ..add(SequenceQuestionEvent.started(
              mode: widget.mode,
              question: question,
              isLast: widget.isLast,
            )),
          child: const SequenceQuestion(),
        ),
      TestMatchingQuestion() => BlocProvider(
          create: (context) => MatchingQuestionBloc()
            ..add(MatchingQuestionEvent.started(
              mode: widget.mode,
              question: question,
              isLast: widget.isLast,
            )),
          child: const MatchingQuestion(),
        ),
    };
  }

  @override
  bool get wantKeepAlive => true;
}
