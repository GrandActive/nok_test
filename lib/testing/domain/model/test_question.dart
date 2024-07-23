import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nok_test/testing/data/model/possible_answer.dart';
import 'package:nok_test/testing/data/model/question.dart';

part 'test_question.freezed.dart';
part 'test_question.g.dart';

sealed class TestQuestion {
  bool? isAnsweredCorrectly;
}

@unfreezed
class TestSelectionQuestion extends TestQuestion with _$TestSelectionQuestion {
  factory TestSelectionQuestion({
    required SelectionQuestion source,
    Set<int>? userAnswers,
    bool? isAnsweredCorrectly,
  }) = _TestQuestion;

  factory TestSelectionQuestion.fromJson(Map<String, dynamic> json) =>
      _$TestSelectionQuestionFromJson(json);
}

@unfreezed
class TestUserInputQuestion extends TestQuestion with _$TestUserInputQuestion {
  factory TestUserInputQuestion({
    required UserInputQuestion source,
    String? userAnswer,
    bool? isAnsweredCorrectly,
  }) = _TestUserInputQuestion;

  factory TestUserInputQuestion.fromJson(Map<String, dynamic> json) =>
      _$TestUserInputQuestionFromJson(json);
}

@unfreezed
class TestSequenceQuestion extends TestQuestion with _$TestSequenceQuestion {
  factory TestSequenceQuestion({
    required SequenceQuestion source,
    List<PossibleAnswer>? userAnswer,
    bool? isAnsweredCorrectly,
  }) = _TestSequenceQuestion;

  factory TestSequenceQuestion.fromJson(Map<String, dynamic> json) =>
      _$TestSequenceQuestionFromJson(json);
}

@unfreezed
class TestMatchingQuestion extends TestQuestion with _$TestMatchingQuestion {
  factory TestMatchingQuestion({
    required MatchingQuestion source,
    Map<int, int?>? userAnswer,
    bool? isAnsweredCorrectly,
  }) = _TestMatchingQuestion;

  factory TestMatchingQuestion.fromJson(Map<String, dynamic> json) =>
      _$TestMatchingQuestionFromJson(json);
}
