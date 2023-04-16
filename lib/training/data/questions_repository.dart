import 'package:gip_test/training/data/model/question.dart';
import 'package:injectable/injectable.dart';

@injectable
class QuestionsRepository {
  final List<Question> _questions = [
    const Question(
      id: 1,
      text:
          "Выберите, что из перечисленного НЕ является целью принятия ФЗ Технический регламент о безопасности зданий и сооружений (выберите один вариант правильного ответа)?",
      possibleAnswers: [
        "1.	защита жизни и здоровья граждан, имущества физических или юридических лиц, государственного или муниципального имущества.",
        "2.	охрана окружающей среды, жизни и здоровья животных и растений.",
        "3.	предупреждение действий, вводящих в заблуждение приобретателей.",
        "4.	обеспечение энергетической эффективности зданий и сооружений.",
        "5.	обеспечение доступным и комфортным жильём и коммунальными услугами граждан.",
      ],
      correctAnswerIndices: {4},
    ),
    const Question(
      id: 2,
      text: "Question 2",
      possibleAnswers: ["OneTwo", "Two", "Three"],
      correctAnswerIndices: {1, 2},
    ),
    const Question(
      id: 3,
      text: "Question 3",
      possibleAnswers: ["OneThree", "Two", "Three"],
      correctAnswerIndices: {2},
    ),
    const Question(
      id: 4,
      text: "Question 4",
      possibleAnswers: ["OneFour", "Two", "Three"],
      correctAnswerIndices: {0},
    ),
  ];

  Future<List<Question>> getAllQuestions() async => _questions;

  Future<Question> getQuestion(int id) async => _questions.firstWhere((el) => el.id == id);
}
