import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nok_test/questions/base/question_bloc/question_bloc.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

@injectable
class MatchingQuestionBloc extends QuestionBloc<TestMatchingQuestion, Map<int, List<int>?>> {
  MatchingQuestionBloc({
    @factoryParam required super.correctAnswer,
  }) : super(defaultAnswer: {});

  final comparator = DeepCollectionEquality();

  @override
  submitAnswer(TestMatchingQuestion question, Map<int, List<int>?> selectedAnswers) {
    question.userAnswer = selectedAnswers;

    final isAnyAnswerSelected = selectedAnswers.values.any((element) => element != null);

    question.isAnsweredCorrectly = isAnyAnswerSelected
        ? comparator.equals(selectedAnswers, question.source.correctMatch)
        : null;
  }
}
