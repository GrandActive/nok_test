import 'package:nok_test/testing/data/firebase_data_source.dart';
import 'package:nok_test/testing/data/model/question.dart';
import 'package:injectable/injectable.dart';

@injectable
class QuestionsRepository {
  QuestionsRepository(this.firebase);

  final FirebaseDataSource firebase;

  Future<List<Question>?> getAllQuestions({required String topic}) =>
      firebase.getAllQuestions(topic);
}
