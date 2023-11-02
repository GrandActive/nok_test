import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/testing/bloc/question_bloc/question_bloc.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/widgets/submit_button.dart';

class MatchingQuestion extends StatelessWidget {
  const MatchingQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionBloc, QuestionState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox.shrink(),
          inProgress: (state) {
            final question = state.question as TestMatchingQuestion;
            final selectedAnswers = state.selectedAnswers as Map<int, int?>;
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 24, right: 16, bottom: 40),
                child: Column(
                  children: [
                    Text(
                      question.source.text,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 40),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => QuestionAnswerPair(
                        question: question.source.questions[index],
                        answers: question.source.answers,
                        selectedAnswers: selectedAnswers,
                      ),
                      separatorBuilder: (context, index) => const SizedBox(height: 16),
                      itemCount: question.source.questions.length,
                    ),
                    const SizedBox(height: 40),
                    SubmitButton(
                      isActive: selectedAnswers.values.any((e) => e != null),
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

class QuestionAnswerPair extends StatelessWidget {
  const QuestionAnswerPair({
    super.key,
    required this.question,
    required this.answers,
    required this.selectedAnswers,
  });

  final PossibleAnswer question;
  final List<PossibleAnswer> answers;
  final Map<int, int?> selectedAnswers;

  void _setValue(BuildContext context, PossibleAnswer? value) {
    final answer = Map<int, int?>.from(selectedAnswers);
    if (value != null) {
      final oldValueKey = answer.entries.firstWhereOrNull((e) => e.value == value.index)?.key;
      if (oldValueKey != null) {
        answer[oldValueKey] = null;
      }
    }
    answer[question.index] = value?.index;
    context.read<QuestionBloc>().add(QuestionEvent.answerSelected(answer: answer));
  }

  @override
  Widget build(BuildContext context) {
    final answersWithSeparators = List<PossibleAnswer?>.from(answers);
    for (var i = 1; i < answersWithSeparators.length; i += 2) {
      answersWithSeparators.insert(i, null);
    }

    final value =
        answers.firstWhereOrNull((answer) => answer.index == selectedAnswers[question.index]);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question.text,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 8),
        DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            border: Border.all(color: const Color(0xFF7F7F7F), width: 1),
          ),
          child: ButtonTheme(
            alignedDropdown: true,
            child: DropdownButton(
              icon: value == null
                  ? const Padding(
                      padding: EdgeInsets.all(12),
                      child: Icon(Icons.arrow_drop_down),
                    )
                  : IconButton(
                      onPressed: () => _setValue(context, null),
                      icon: const Icon(Icons.close),
                    ),
              isExpanded: true,
              itemHeight: null,
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              padding: const EdgeInsets.symmetric(vertical: 8),
              underline: const SizedBox.shrink(),
              hint: const Text(
                "Выберите ответ",
                style: TextStyle(color: Color(0xFF9D9D9D), fontWeight: FontWeight.w400),
              ),
              value: value,
              selectedItemBuilder: (context) => answersWithSeparators
                  .map((answer) => Align(
                        alignment: Alignment.centerLeft,
                        child: answer == null
                            ? const SizedBox.shrink()
                            : Text(
                                "${answer.index}. ${answer.text}",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: const TextStyle(fontWeight: FontWeight.w400),
                              ),
                      ))
                  .toList(),
              items: answersWithSeparators
                  .map((answer) => DropdownMenuItem(
                      enabled: answer != null,
                      value: answer,
                      child: answer == null
                          ? const Divider(height: 1)
                          : Text(
                              "${answer.index}. ${answer.text}",
                              style: const TextStyle(fontWeight: FontWeight.w400),
                            )))
                  .toList(),
              onChanged: (value) => _setValue(context, value),
            ),
          ),
        ),
      ],
    );
  }
}

extension<T> on Iterable<T> {
  T? firstWhereOrNull(bool Function(T element) test) {
    final list = where(test);
    return list.isEmpty ? null : list.first;
  }
}
