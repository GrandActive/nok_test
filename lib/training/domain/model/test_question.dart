import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gip_test/training/data/model/question.dart';

part 'test_question.freezed.dart';

part 'test_question.g.dart';

@unfreezed
class TestQuestion with _$TestQuestion {
  factory TestQuestion({
    required Question source,
    @Default(null) Set<int>? userAnswers,
    required bool? isAnsweredCorrectly,
  }) = _TestQuestion;

  factory TestQuestion.fromJson(Map<String, dynamic> json) => _$TestQuestionFromJson(json);
}
