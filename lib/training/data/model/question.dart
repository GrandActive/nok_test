import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gip_test/training/data/model/possible_answer.dart';

part 'question.freezed.dart';

part 'question.g.dart';

@freezed
class Question with _$Question {
  const factory Question({
    required int id,
    required String text,
    required List<PossibleAnswer> possibleAnswers,
    @JsonKey(name: "correctAnswers") required Set<int> correctAnswerIds,
  }) = _Question;

  factory Question.fromJson(Map<String, Object?> json) => _$QuestionFromJson(json);
}
