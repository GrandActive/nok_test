import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:nok_test/questions/base/question_bloc/question_bloc.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

@injectable
class SequenceQuestionBloc extends QuestionBloc<TestSequenceQuestion, List<PossibleAnswer>> {
  SequenceQuestionBloc({
    @factoryParam required super.defaultAnswer,
    @factoryParam required super.correctAnswer,
  });

  @override
  submitAnswer(TestSequenceQuestion question, List<PossibleAnswer> selectedAnswers) {
    final selectedOrder = selectedAnswers.map((answer) => answer.index).toList(growable: false);
    question.userAnswer = selectedAnswers;
    question.isAnsweredCorrectly = listEquals(selectedOrder, question.source.correctOrder);
  }
}
