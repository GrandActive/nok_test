import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/injection.dart';
import 'package:nok_test/questions/base/question_bloc/question_bloc.dart';
import 'package:nok_test/questions/sequence_question/sequence_question_bloc/sequence_question_bloc.dart';
import 'package:nok_test/testing/bloc/testing_bloc/testing_bloc.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/widgets/submit_button.dart';
import 'package:nok_test/utils/list_move_extension.dart';

import 'widgets/widgets.dart';

class SequenceQuestion extends StatelessWidget {
  const SequenceQuestion({
    super.key,
    required this.mode,
    required this.question,
    required this.isLast,
    required this.onAnswered,
  });

  final TestMode mode;
  final TestSequenceQuestion question;
  final bool isLast;
  final VoidCallback onAnswered;

  void _updateAnswer(
    BuildContext context,
    List<PossibleAnswer> currentAnswerOrder,
    int oldIndex,
    int newIndex,
  ) {
    final answerOrder = List<PossibleAnswer>.from(currentAnswerOrder, growable: false);
    answerOrder.move(oldIndex, newIndex);
    context.read<SequenceQuestionBloc>().add(QuestionEvent.answerSelected(answer: answerOrder));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final correctAnswer = question.source.correctOrder[0]
            .toString()
            .characters
            .map((index) => question.source.answers.firstWhere((a) => a.index == int.parse(index)))
            .toList();

        return getIt<SequenceQuestionBloc>(
          param1: question.source.answers,
          param2: correctAnswer,
        )..add(QuestionEvent.started(
            mode: mode,
            question: question,
            isLast: isLast,
          ));
      },
      child: BlocListener<TestingBloc, TestingState>(
        listenWhen: (previous, current) => previous.selectedIndex != current.selectedIndex,
        listener: (context, state) {
          context.read<SequenceQuestionBloc>().add(const QuestionEvent.putOnHold());
        },
        child: BlocConsumer<SequenceQuestionBloc, QuestionState>(
          listener: (context, state) {
            state.mapOrNull(
              answered: (_) => onAnswered(),
            );
          },
          builder: (context, state) {
            if (state is Initial) return const SizedBox.shrink();

            final question = state.question!;
            final answers = state.selectedAnswers!;

            return Padding(
              padding: const EdgeInsets.only(left: 16, top: 24, right: 16, bottom: 36),
              child: Column(
                children: [
                  Text(
                    question.source.title,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 24),
                  if (state is! Answered) ...[
                    const Text(
                      "Для перетаскивания зажмите вариант ответа",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                  ],
                  if (state is Answered)
                    FinishedSequenceAnswerList(
                      question: question,
                      showCorrectness: true,
                      showCorrectAnswer: true,
                      showResult: true,
                    )
                  else
                    SequenceAnswerList(
                      answers: answers,
                      onReorder: (int oldIndex, int newIndex) =>
                          _updateAnswer(context, answers, oldIndex, newIndex),
                    ),
                  const SizedBox(height: 24),
                  SubmitButton(
                    isActive: true,
                    isFinishing: state.isLast,
                    isSubmitting: state.mode == TestMode.training && state is! Answered,
                    onSubmit: () => context
                        .read<SequenceQuestionBloc>()
                        .add(const QuestionEvent.answerSubmitted()),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
