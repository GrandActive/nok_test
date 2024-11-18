import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';

part 'question.freezed.dart';
part 'question.g.dart';

sealed class Question {}

@freezed
class SelectionQuestion with _$SelectionQuestion implements Question {
  const factory SelectionQuestion({
    required String text,
    required List<PossibleAnswer> possibleAnswers,
    @JsonKey(name: "correctAnswers") required Set<int> correctAnswerIds,
  }) = _Question;

  factory SelectionQuestion.fromJson(Map<String, Object?> json) =>
      _$SelectionQuestionFromJson(json);
}

@freezed
class SequenceQuestion with _$SequenceQuestion implements Question {
  const SequenceQuestion._();

  const factory SequenceQuestion({
    required String title,
    required List<PossibleAnswer> answers,
    required List<int> correctOrder,
  }) = _SequenceQuestion;

  factory SequenceQuestion.fromJson(Map<String, Object?> json) => _$SequenceQuestionFromJson(json);

  List<PossibleAnswer> get correctAnswers =>
      correctOrder.map((i) => answers.firstWhere((a) => a.index == i)).toList();
}

@freezed
class UserInputQuestion with _$UserInputQuestion implements Question {
  const factory UserInputQuestion({
    required String title,
    required String text,
    required String correctAnswer,
  }) = _UserInputQuestion;

  factory UserInputQuestion.fromJson(Map<String, Object?> json) =>
      _$UserInputQuestionFromJson(json);
}

@freezed
class MatchingQuestion with _$MatchingQuestion implements Question {
  const factory MatchingQuestion({
    required String text,
    required List<PossibleAnswer> questions,
    required List<PossibleAnswer> answers,
    required Map<int, int?> correctMatch,
  }) = _MatchingQuestion;

  factory MatchingQuestion.fromJson(Map<String, dynamic> json) => _$MatchingQuestionFromJson(json);
}
