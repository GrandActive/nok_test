import 'package:injectable/injectable.dart';
import 'package:nok_test/questions/base/question_bloc/question_bloc.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

@injectable
class UserInputQuestionBloc extends QuestionBloc<TestUserInputQuestion, String?> {
  UserInputQuestionBloc({
    @factoryParam required super.correctAnswer,
  }) : super(defaultAnswer: null);

  @override
  submitAnswer(TestUserInputQuestion question, String? selectedAnswers) {
    final filteredAnswer = selectedAnswers?.trim().toLowerCase();
    question.userAnswer = filteredAnswer;
    question.isAnsweredCorrectly = filteredAnswer == null
        ? null
        : filteredAnswer == question.source.correctAnswer.toLowerCase();
  }
}
