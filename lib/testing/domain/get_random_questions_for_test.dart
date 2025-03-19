import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:nok_test/specializations/models/qualification.dart';
import 'package:nok_test/testing/data/model/question.dart';
import 'package:nok_test/testing/data/questions_repository.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

@injectable
class GetRandomQuestionsForTest {
  const GetRandomQuestionsForTest({required this.repository});

  final QuestionsRepository repository;

  Future<List<TestQuestion>> call({
    required Qualification qualification,
    int count = 50,
  }) async {
    final repoQuestions = await repository.getQuestions(qualification);
    if (repoQuestions == null) throw Exception("Received no questions");
    final questions = repoQuestions
        .map((question) => switch (question) {
              SelectionQuestion() => TestSelectionQuestion(source: question),
              SequenceQuestion() => TestSequenceQuestion(source: question),
              UserInputQuestion() => TestUserInputQuestion(source: question),
              MatchingQuestion() => TestMatchingQuestion(source: question),
            })
        .toList(growable: false);
    final randomSelection = _generateRandomSelection(questions, count);
    return randomSelection;
  }

  List<TestQuestion> _generateRandomSelection(List<TestQuestion> source, int count) {
    final random = Random();
    final result = <TestQuestion>[];
    final selected = <int>[];
    for (var i = 0; i < count; i++) {
      int nextIndex;
      do {
        nextIndex = random.nextInt(source.length);
      } while (selected.contains(nextIndex));
      selected.add(nextIndex);
      result.add(source[nextIndex]);
    }
    return result;
  }
}
