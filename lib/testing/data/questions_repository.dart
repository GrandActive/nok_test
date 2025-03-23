import 'package:injectable/injectable.dart';
import 'package:nok_test/specializations/models/qualification.dart';
import 'package:nok_test/testing/data/model/question.dart';
import 'package:nok_test/testing/data/questions_firebase_data_source.dart';

@injectable
class QuestionsRepository {
  QuestionsRepository(this.firebase);

  final QuestionsFirebaseDataSource firebase;

  Future<List<Question>?> getQuestions(Qualification qualification) =>
      firebase.getQuestions(qualification.id);
}
