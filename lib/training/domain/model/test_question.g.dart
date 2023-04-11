// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TestQuestion _$$_TestQuestionFromJson(Map<String, dynamic> json) =>
    _$_TestQuestion(
      source: Question.fromJson(json['source'] as Map<String, dynamic>),
      userAnswers: (json['userAnswers'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toSet() ??
          null,
      isAnsweredCorrectly: json['isAnsweredCorrectly'] as bool?,
    );

Map<String, dynamic> _$$_TestQuestionToJson(_$_TestQuestion instance) =>
    <String, dynamic>{
      'source': instance.source,
      'userAnswers': instance.userAnswers?.toList(),
      'isAnsweredCorrectly': instance.isAnsweredCorrectly,
    };
