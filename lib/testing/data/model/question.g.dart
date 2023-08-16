// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
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
      'text': instance.text,
      'possibleAnswers': instance.possibleAnswers,
      'correctAnswers': instance.correctAnswerIds.toList(),
    };

_$_SequenceQuestion _$$_SequenceQuestionFromJson(Map<String, dynamic> json) =>
    _$_SequenceQuestion(
      title: json['title'] as String,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => PossibleAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
      correctOrder:
          (json['correctOrder'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_SequenceQuestionToJson(_$_SequenceQuestion instance) =>
    <String, dynamic>{
      'title': instance.title,
      'answers': instance.answers,
      'correctOrder': instance.correctOrder,
    };

_$_UserInputQuestion _$$_UserInputQuestionFromJson(Map<String, dynamic> json) =>
    _$_UserInputQuestion(
      title: json['title'] as String,
      text: json['text'] as String,
      correctAnswer: json['correctAnswer'] as String,
    );

Map<String, dynamic> _$$_UserInputQuestionToJson(
        _$_UserInputQuestion instance) =>
    <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
      'correctAnswer': instance.correctAnswer,
    };

_$_MatchingQuestion _$$_MatchingQuestionFromJson(Map<String, dynamic> json) =>
    _$_MatchingQuestion(
      text: json['text'] as String,
      questions: (json['questions'] as List<dynamic>)
          .map((e) => PossibleAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
      answers: (json['answers'] as List<dynamic>)
          .map((e) => PossibleAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
      correctMatch: (json['correctMatch'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as int?),
      ),
    );

Map<String, dynamic> _$$_MatchingQuestionToJson(_$_MatchingQuestion instance) =>
    <String, dynamic>{
      'text': instance.text,
      'questions': instance.questions,
      'answers': instance.answers,
      'correctMatch':
          instance.correctMatch.map((k, e) => MapEntry(k.toString(), e)),
    };
