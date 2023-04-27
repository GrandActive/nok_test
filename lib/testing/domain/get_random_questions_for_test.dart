import 'dart:math';

import 'package:gip_test/testing/domain/model/test_question.dart';
import 'package:gip_test/testing/data/questions_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetRandomQuestionsForTest {
  GetRandomQuestionsForTest({required this.repository});

  final QuestionsRepository repository;

  Future<List<TestQuestion>> call({int count = 50}) async {
    final repoQuestions = await repository.getAllQuestions();
    if (repoQuestions == null) throw Exception("Received no questions");
    final questions = repoQuestions
        .map((question) => TestQuestion(source: question, isAnsweredCorrectly: null))
        .toList(growable: false);
    final random = Random();
    final result = <TestQuestion>[];
    final selected = <int>[];
    for (var i = 0; i < count; i++) {
      int nextIndex;
      do {
        nextIndex = random.nextInt(questions.length);
      } while (selected.contains(nextIndex));
      selected.add(nextIndex);
      result.add(questions[nextIndex]);
    }
    return result;
  }
}
