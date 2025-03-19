import 'package:injectable/injectable.dart';
import 'package:nok_test/specializations/models/qualification.dart';
import 'package:nok_test/testing/data/firebase_data_source.dart';
import 'package:nok_test/testing/data/model/question.dart';

@injectable
class QuestionsRepository {
  QuestionsRepository(this.firebase);

  final FirebaseDataSource firebase;

  Future<List<Question>?> getQuestions(Qualification qualification) =>
      firebase.getQuestions(qualification.id);
}
