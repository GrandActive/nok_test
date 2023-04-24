// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      id: json['id'] as int,
      text: json['text'] as String,
      possibleAnswers: (json['possibleAnswers'] as List<dynamic>)
          .map((e) => PossibleAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
      correctAnswerIds: (json['correctAnswers'] as List<dynamic>)
          .map((e) => e as int)
          .toSet(),
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'possibleAnswers': instance.possibleAnswers,
      'correctAnswers': instance.correctAnswerIds.toList(),
    };
