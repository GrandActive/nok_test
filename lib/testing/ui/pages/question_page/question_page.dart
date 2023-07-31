import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/testing/bloc/question_bloc/question_bloc.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/pages/question_page/widgets/widgets.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({
    super.key,
    required this.question,
    this.isLast = false,
  });

  final TestQuestion question;
  final bool isLast;

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocProvider(
      create: (context) => QuestionBloc()
        ..add(QuestionEvent.started(
          question: widget.question,
          isLast: widget.isLast,
        )),
      child: BlocBuilder<QuestionBloc, QuestionState>(
        builder: (context, state) {
          switch (widget.question) {
            case TestSelectionQuestion():
              return const SelectionQuestion();
            case TestUserInputQuestion():
              return const UserInputQuestion();
            default:
              return const Center(
                child: Text("(пока) Неподдерживаемый тип вопроса"),
              );
          }
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
