import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/testing/bloc/question_bloc/question_bloc.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/widgets/submit_button.dart';

class UserInputQuestion extends StatelessWidget {
  const UserInputQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionBloc, QuestionState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox.shrink(),
          inProgress: (state) {
            final question = state.question as TestUserInputQuestion;
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 36, top: 24),
                child: Column(
                  children: [
                    Text(
                      "${question.source.title}:",
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      question.source.text,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 40),
                    TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Введите ответ",
                        hintStyle: TextStyle(color: Color(0xFF9D9D9D), fontWeight: FontWeight.w400),
                        isDense: true,
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      onChanged: (value) => context
                          .read<QuestionBloc>()
                          .add(QuestionEvent.answerSelected(answer: value)),
                    ),
                    const SizedBox(height: 40),
                    SubmitButton(
                      isActive: state.selectedAnswers != null,
                      isFinishing: state.isLast,
                    ),
                  ],
                ),
              ),
            );
          }, answered: (state) {
            // TODO
            return Placeholder();
        },
        );
      },
    );
  }
}
