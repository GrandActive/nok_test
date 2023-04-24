import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:gip_test/training/data/model/question.dart';
import 'package:injectable/injectable.dart';

@injectable
class FirebaseDataSource {
  FirebaseDatabase get _database => FirebaseDatabase.instance;

  Future<List<Question>?> getAllQuestions() async {
    final event = await _database.ref("questions").once();
    final List data = jsonDecode(jsonEncode(event.snapshot.value));
    final questions = List.generate(data.length, (i) => i).map((i) {
      final question = data[i];
      if (question != null) {
        question["id"] = i;
        return Question.fromJson(question);
      } else {
        return const Question(id: 0, correctAnswerIds: {}, possibleAnswers: [], text: "deleteMe");
      }
    }).toList();
    questions.removeWhere((q) => q.text == "deleteMe");
    return questions;
  }

  Future<Question?> getQuestion(int id) async {
    final event = await _database.ref("questions/$id").once();
    final data = jsonDecode(jsonEncode(event.snapshot.value));
    final question = data as Map<String, dynamic>?;
    if (question != null) {
      question["id"] = id;
      return Question.fromJson(question);
    }
    return null;
  }
}
