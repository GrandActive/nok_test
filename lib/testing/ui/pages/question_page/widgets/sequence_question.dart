import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/testing/bloc/question_bloc/question_bloc.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/widgets/submit_button.dart';

class SequenceQuestion extends StatelessWidget {
  const SequenceQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionBloc, QuestionState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox.shrink(),
          inProgress: (state) {
            final question = state.question as TestSequenceQuestion;
            final selectedAnswers =
                state.selectedAnswers as List<PossibleAnswer>? ?? question.source.answers;

            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 36),
                child: Column(
                  children: [
                    Text(question.source.title),
                    const SizedBox(height: 24),
                    const Text("Для перетаскивания зажмите вариант ответа"),
                    const SizedBox(height: 8),
                    ReorderableListView(
                      proxyDecorator: (child, index, animation) => child,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      onReorder: (oldIndex, newIndex) {
                        if (newIndex > oldIndex) newIndex -= 1;

                        final answerOrder =
                            List<PossibleAnswer>.from(selectedAnswers, growable: false);
                        answerOrder.move(oldIndex, newIndex);
                        context
                            .read<QuestionBloc>()
                            .add(QuestionEvent.answerSelected(answer: answerOrder));
                      },
                      children: [
                        for (final answer in selectedAnswers)
                          Padding(
                            key: ValueKey(answer),
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Material(
                              child: ListTile(
                                dense: true,
                                title: Text(answer.text, style: const TextStyle(fontSize: 14)),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  side: BorderSide(color: Color(0xFFDBE9F9)),
                                ),
                              ),
                            ),
                          )
                      ],
                    ),
                    const SizedBox(height: 24),
                    SubmitButton(isActive: true, isFinishing: state.isLast),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

extension MoveElement<T> on List<T> {
  void move(int from, int to) {
    RangeError.checkValidIndex(from, this, "from", length);
    RangeError.checkValidIndex(to, this, "to", length);
    var element = this[from];
    if (from < to) {
      setRange(from, to, this, from + 1);
    } else {
      setRange(to + 1, from + 1, this, to);
    }
    this[to] = element;
  }
}
