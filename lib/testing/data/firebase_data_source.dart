import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:nok_test/testing/data/model/question.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

@injectable
class FirebaseDataSource {
  FirebaseDatabase get _database => FirebaseDatabase.instance;

  Future<List<Question>?> getAllQuestions(String topic) async {
    await _checkVersion();

    final dataEvent = await _database.ref().once();
    final Map data = jsonDecode(jsonEncode(dataEvent.snapshot.value));

    final Map questions = data["questions"];
    final Map topics = data["topics"];

    final questionsIds = (topics[topic]["questions"] as List);
    return questionsIds.whereType<String>().map((id) {
      final question = questions[id];
      switch (question["type"]) {
        case "selection":
          return SelectionQuestion.fromJson(question);
        case "userInput":
          return UserInputQuestion.fromJson(question);
        case "sequence":
          return SequenceQuestion.fromJson(question);
        case "matching":
          final preparedQuestion = _prepareMatchingQuestion(question);
          return MatchingQuestion.fromJson(preparedQuestion);
        default:
          throw Exception("Unknown question type in database: ${question["type"]}");
      }
    }).toList();
  }

  dynamic _prepareMatchingQuestion(dynamic question) {
    final correctMatchList = question["correctMatch"] as List;
    final correctMatchMap = <String, dynamic>{};
    for (var i = 1; i < correctMatchList.length; i++) {
      correctMatchMap[i.toString()] = correctMatchList[i];
    }
    question["correctMatch"] = correctMatchMap;
    return question;
  }

  Future<void> _checkVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    final appVersion = packageInfo.version;

    final dbVersionEvent = await _database.ref("version").once();
    final dbVersion = dbVersionEvent.snapshot.value as String;

    if (dbVersion != appVersion) throw WrongDbVersionException();
  }
}

class WrongDbVersionException implements Exception {}
