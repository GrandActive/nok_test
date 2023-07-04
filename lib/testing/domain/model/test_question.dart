import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nok_test/testing/data/model/question.dart';

part 'test_question.freezed.dart';

part 'test_question.g.dart';

sealed class TestQuestion {
  bool? get isAnsweredCorrectly;
}

@unfreezed
class TestSelectionQuestion with _$TestSelectionQuestion implements TestQuestion {
  factory TestSelectionQuestion({
    required SelectionQuestion source,
    @Default({}) Set<int> userAnswers,
    bool? isAnsweredCorrectly,
  }) = _TestQuestion;

  factory TestSelectionQuestion.fromJson(Map<String, dynamic> json) =>
      _$TestSelectionQuestionFromJson(json);
}

@unfreezed
class TestUserInputQuestion with _$TestUserInputQuestion implements TestQuestion {
  factory TestUserInputQuestion({
    required UserInputQuestion source,
    String? userAnswer,
    bool? isAnsweredCorrectly,
  }) = _TestUserInputQuestion;

  factory TestUserInputQuestion.fromJson(Map<String, dynamic> json) =>
      _$TestUserInputQuestionFromJson(json);
}

@unfreezed
class TestSequenceQuestion with _$TestSequenceQuestion implements TestQuestion {
  factory TestSequenceQuestion({
    required SequenceQuestion source,
    List<int>? userAnswer,
    bool? isAnsweredCorrectly,
  }) = _TestSequenceQuestion;

  factory TestSequenceQuestion.fromJson(Map<String, dynamic> json) =>
      _$TestSequenceQuestionFromJson(json);
}

@unfreezed
class TestMatchingQuestion with _$TestMatchingQuestion implements TestQuestion {
  factory TestMatchingQuestion({
    required MatchingQuestion source,
    Map<int, int?>? userAnswer,
    bool? isAnsweredCorrectly,
  }) = _TestMatchingQuestion;

  factory TestMatchingQuestion.fromJson(Map<String, dynamic> json) =>
      _$TestMatchingQuestionFromJson(json);
}
