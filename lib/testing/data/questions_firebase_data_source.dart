import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:nok_test/common/firebase_data_source.dart';
import 'package:nok_test/testing/data/model/question.dart';

@injectable
class QuestionsFirebaseDataSource extends FirebaseDataSource {
  Future<List<Question>?> getQuestions(String qualificationId) async {
    await checkVersion();

    final dataEvent = await database.ref().once();
    final Map data = jsonDecode(jsonEncode(dataEvent.snapshot.value));

    final Map questions = data["questions"];
    final Map qualifications = data["qualifications"];

    final questionsIds = (qualifications[qualificationId]["questions"] as List);
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
}
