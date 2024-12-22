// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionImpl _$$QuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuestionImpl(
      text: json['text'] as String,
      possibleAnswers: (json['possibleAnswers'] as List<dynamic>)
          .map((e) => PossibleAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
      correctAnswerIds: (json['correctAnswers'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toSet(),
    );

Map<String, dynamic> _$$QuestionImplToJson(_$QuestionImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'possibleAnswers': instance.possibleAnswers,
      'correctAnswers': instance.correctAnswerIds.toList(),
    };

_$SequenceQuestionImpl _$$SequenceQuestionImplFromJson(
        Map<String, dynamic> json) =>
    _$SequenceQuestionImpl(
      title: json['title'] as String,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => PossibleAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
      correctOrder: (json['correctOrder'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$SequenceQuestionImplToJson(
        _$SequenceQuestionImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'answers': instance.answers,
      'correctOrder': instance.correctOrder,
    };

_$UserInputQuestionImpl _$$UserInputQuestionImplFromJson(
        Map<String, dynamic> json) =>
    _$UserInputQuestionImpl(
      title: json['title'] as String,
      text: json['text'] as String,
      correctAnswer: json['correctAnswer'] as String,
    );

Map<String, dynamic> _$$UserInputQuestionImplToJson(
        _$UserInputQuestionImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
      'correctAnswer': instance.correctAnswer,
    };

_$MatchingQuestionImpl _$$MatchingQuestionImplFromJson(
        Map<String, dynamic> json) =>
    _$MatchingQuestionImpl(
      text: json['text'] as String,
      questions: (json['questions'] as List<dynamic>)
          .map((e) => PossibleAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
      answers: (json['answers'] as List<dynamic>)
          .map((e) => PossibleAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
      correctMatch: (json['correctMatch'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k),
            (e as List<dynamic>?)?.map((e) => (e as num).toInt()).toList()),
      ),
    );

Map<String, dynamic> _$$MatchingQuestionImplToJson(
        _$MatchingQuestionImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'questions': instance.questions,
      'answers': instance.answers,
      'correctMatch':
          instance.correctMatch.map((k, e) => MapEntry(k.toString(), e)),
    };
