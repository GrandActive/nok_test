import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:nok_test/questions/base/question_bloc/question_bloc.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

@injectable
class SelectionQuestionBloc extends QuestionBloc<TestSelectionQuestion, Set<int>> {
  SelectionQuestionBloc({
    @factoryParam required super.correctAnswer,
  }) : super(defaultAnswer: {});

  @override
  submitAnswer(TestSelectionQuestion question, Set<int> selectedAnswers) {
    question.userAnswers = selectedAnswers;
    question.isAnsweredCorrectly = selectedAnswers.isEmpty
        ? null
        : setEquals(selectedAnswers, question.source.correctAnswerIds);
  }
}
