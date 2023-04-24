import 'package:gip_test/training/data/firebase_data_source.dart';
import 'package:gip_test/training/data/model/question.dart';
import 'package:injectable/injectable.dart';

@injectable
class QuestionsRepository {
  QuestionsRepository(this.firebase);

  final FirebaseDataSource firebase;

  Future<List<Question>?> getAllQuestions() => firebase.getAllQuestions();

  Future<Question?> getQuestion(int id) => firebase.getQuestion(id);
}
