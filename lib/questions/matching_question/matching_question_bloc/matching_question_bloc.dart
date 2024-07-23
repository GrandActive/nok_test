import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:nok_test/questions/base/question_bloc/question_bloc.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

@injectable
class MatchingQuestionBloc extends QuestionBloc<TestMatchingQuestion, Map<int, int?>> {
  MatchingQuestionBloc({
    @factoryParam required super.correctAnswer,
  }) : super(defaultAnswer: {});

  @override
  submitAnswer(TestMatchingQuestion question, Map<int, int?> selectedAnswers) {
    question.userAnswer = selectedAnswers;
    question.isAnsweredCorrectly = selectedAnswers.values.any((element) => element != null)
        ? mapEquals(selectedAnswers, question.source.correctMatch)
        : null;
  }
}
