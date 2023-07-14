// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TestQuestion _$$_TestQuestionFromJson(Map<String, dynamic> json) =>
    _$_TestQuestion(
      source:
          SelectionQuestion.fromJson(json['source'] as Map<String, dynamic>),
      userAnswers:
          (json['userAnswers'] as List<dynamic>?)?.map((e) => e as int).toSet(),
      isAnsweredCorrectly: json['isAnsweredCorrectly'] as bool?,
    );

Map<String, dynamic> _$$_TestQuestionToJson(_$_TestQuestion instance) =>
    <String, dynamic>{
      'source': instance.source,
      'userAnswers': instance.userAnswers?.toList(),
      'isAnsweredCorrectly': instance.isAnsweredCorrectly,
    };

_$_TestUserInputQuestion _$$_TestUserInputQuestionFromJson(
        Map<String, dynamic> json) =>
    _$_TestUserInputQuestion(
      source:
          UserInputQuestion.fromJson(json['source'] as Map<String, dynamic>),
      userAnswer: json['userAnswer'] as String?,
      isAnsweredCorrectly: json['isAnsweredCorrectly'] as bool?,
    );

Map<String, dynamic> _$$_TestUserInputQuestionToJson(
        _$_TestUserInputQuestion instance) =>
    <String, dynamic>{
      'source': instance.source,
      'userAnswer': instance.userAnswer,
      'isAnsweredCorrectly': instance.isAnsweredCorrectly,
    };

_$_TestSequenceQuestion _$$_TestSequenceQuestionFromJson(
        Map<String, dynamic> json) =>
    _$_TestSequenceQuestion(
      source: SequenceQuestion.fromJson(json['source'] as Map<String, dynamic>),
      userAnswer:
          (json['userAnswer'] as List<dynamic>?)?.map((e) => e as int).toList(),
      isAnsweredCorrectly: json['isAnsweredCorrectly'] as bool?,
    );

Map<String, dynamic> _$$_TestSequenceQuestionToJson(
        _$_TestSequenceQuestion instance) =>
    <String, dynamic>{
      'source': instance.source,
      'userAnswer': instance.userAnswer,
      'isAnsweredCorrectly': instance.isAnsweredCorrectly,
    };

_$_TestMatchingQuestion _$$_TestMatchingQuestionFromJson(
        Map<String, dynamic> json) =>
    _$_TestMatchingQuestion(
      source: MatchingQuestion.fromJson(json['source'] as Map<String, dynamic>),
      userAnswer: (json['userAnswer'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e as int?),
      ),
      isAnsweredCorrectly: json['isAnsweredCorrectly'] as bool?,
    );

Map<String, dynamic> _$$_TestMatchingQuestionToJson(
        _$_TestMatchingQuestion instance) =>
    <String, dynamic>{
      'source': instance.source,
      'userAnswer':
          instance.userAnswer?.map((k, e) => MapEntry(k.toString(), e)),
      'isAnsweredCorrectly': instance.isAnsweredCorrectly,
    };
