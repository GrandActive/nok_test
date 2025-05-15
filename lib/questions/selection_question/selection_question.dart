import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/injection.dart';
import 'package:nok_test/questions/base/question_bloc/question_bloc.dart';
import 'package:nok_test/questions/selection_question/selection_question_bloc/selection_question_bloc.dart';
import 'package:nok_test/testing/bloc/testing_bloc/testing_bloc.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/pages/testing_page/widgets/question_text.dart';
import 'package:nok_test/testing/ui/widgets/submit_button.dart';

import 'widgets/widgets.dart';

class SelectionQuestion extends StatelessWidget {
  const SelectionQuestion({
    super.key,
    required this.question,
    required this.mode,
    required this.isLast,
    required this.onAnswered,
  });

  final TestMode mode;
  final TestSelectionQuestion question;
  final bool isLast;
  final VoidCallback onAnswered;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SelectionQuestionBloc>(
        param1: question.source.correctAnswerIds,
      )..add(QuestionEvent.started(
          mode: mode,
          question: question,
          isLast: isLast,
        )),
      child: MultiBlocListener(
        listeners: [
          BlocListener<TestingBloc, TestingState>(
            listenWhen: (previous, current) => previous.selectedIndex != current.selectedIndex,
            listener: (context, state) {
              context.read<SelectionQuestionBloc>().add(const QuestionEvent.putOnHold());
            },
          ),
          BlocListener<SelectionQuestionBloc, QuestionState>(
            listener: (context, state) {
              state.mapOrNull(
                answered: (_) => onAnswered(),
              );
            },
          )
        ],
        child: BlocBuilder<SelectionQuestionBloc, QuestionState<TestSelectionQuestion, Set<int>>>(
          builder: (context, state) {
            if (state is Initial) return const SizedBox.shrink();

            final question = state.question!;
            final selectedAnswers = state.selectedAnswers ?? question.userAnswers ?? {};

            return Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  QuestionText(text: question.source.text),
                  const SizedBox(height: 24),
                  SelectionAnswerList(
                    possibleAnswers: question.source.possibleAnswers,
                    selectedIndices: selectedAnswers,
                    correctAnswers: question.source.correctAnswerIds,
                    showCorrectnessOfSelected: state is Answered,
                    showCorrectAnswer: state is Answered,
                    showResult: state is Answered,
                    disabled: state is Answered,
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: SubmitButton(
                      isActive: selectedAnswers.isNotEmpty,
                      isFinishing: state.isLast,
                      isSubmitting: state.mode == TestMode.training && state is! Answered,
                      onSubmit: () => context
                          .read<SelectionQuestionBloc>()
                          .add(const QuestionEvent.answerSubmitted()),
                    ),
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
