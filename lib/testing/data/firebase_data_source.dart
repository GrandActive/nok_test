import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/services.dart';
import 'package:nok_test/testing/data/model/question.dart';
import 'package:injectable/injectable.dart';

@injectable
class FirebaseDataSource {
  FirebaseDatabase get _database => FirebaseDatabase.instance;

  Future<List<Question>?> getAllQuestions(String topic) async {
    final fileContents = await rootBundle.loadString("assets/sample_db_v1.1.0.json");
    final Map data = jsonDecode(fileContents);

    final Map questions = data["questions"];
    final Map topics = data["topics"];

    final questionsIds = (topics[topic]["questions"] as Map).entries;
    return questionsIds.map((id) {
      final question = questions[id.value];
      switch (question["type"]) {
        case "selection":
          return SelectionQuestion.fromJson(question);
        case "userInput":
          return UserInputQuestion.fromJson(question);
        case "sequence":
          return SequenceQuestion.fromJson(question);
        case "matching":
          return MatchingQuestion.fromJson(question);
        default:
          throw Exception("Unknown question type in database: ${question["type"]}");
      }
    }).toList();
  }
}
