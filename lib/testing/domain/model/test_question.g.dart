// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestQuestionImpl _$$TestQuestionImplFromJson(Map<String, dynamic> json) =>
    _$TestQuestionImpl(
      source:
          SelectionQuestion.fromJson(json['source'] as Map<String, dynamic>),
      userAnswers: (json['userAnswers'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toSet(),
      isAnsweredCorrectly: json['isAnsweredCorrectly'] as bool?,
    );

Map<String, dynamic> _$$TestQuestionImplToJson(_$TestQuestionImpl instance) =>
    <String, dynamic>{
      'source': instance.source,
      'userAnswers': instance.userAnswers?.toList(),
      'isAnsweredCorrectly': instance.isAnsweredCorrectly,
    };

_$TestUserInputQuestionImpl _$$TestUserInputQuestionImplFromJson(
        Map<String, dynamic> json) =>
    _$TestUserInputQuestionImpl(
      source:
          UserInputQuestion.fromJson(json['source'] as Map<String, dynamic>),
      userAnswer: json['userAnswer'] as String?,
      isAnsweredCorrectly: json['isAnsweredCorrectly'] as bool?,
    );

Map<String, dynamic> _$$TestUserInputQuestionImplToJson(
        _$TestUserInputQuestionImpl instance) =>
    <String, dynamic>{
      'source': instance.source,
      'userAnswer': instance.userAnswer,
      'isAnsweredCorrectly': instance.isAnsweredCorrectly,
    };

_$TestSequenceQuestionImpl _$$TestSequenceQuestionImplFromJson(
        Map<String, dynamic> json) =>
    _$TestSequenceQuestionImpl(
      source: SequenceQuestion.fromJson(json['source'] as Map<String, dynamic>),
      userAnswer: (json['userAnswer'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      isAnsweredCorrectly: json['isAnsweredCorrectly'] as bool?,
    );

Map<String, dynamic> _$$TestSequenceQuestionImplToJson(
        _$TestSequenceQuestionImpl instance) =>
    <String, dynamic>{
      'source': instance.source,
      'userAnswer': instance.userAnswer,
      'isAnsweredCorrectly': instance.isAnsweredCorrectly,
    };

_$TestMatchingQuestionImpl _$$TestMatchingQuestionImplFromJson(
        Map<String, dynamic> json) =>
    _$TestMatchingQuestionImpl(
      source: MatchingQuestion.fromJson(json['source'] as Map<String, dynamic>),
      userAnswer: (json['userAnswer'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), (e as num?)?.toInt()),
      ),
      isAnsweredCorrectly: json['isAnsweredCorrectly'] as bool?,
    );

Map<String, dynamic> _$$TestMatchingQuestionImplToJson(
        _$TestMatchingQuestionImpl instance) =>
    <String, dynamic>{
      'source': instance.source,
      'userAnswer':
          instance.userAnswer?.map((k, e) => MapEntry(k.toString(), e)),
      'isAnsweredCorrectly': instance.isAnsweredCorrectly,
    };
