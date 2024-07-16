// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SelectionQuestion _$SelectionQuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$SelectionQuestion {
  String get text => throw _privateConstructorUsedError;
  List<PossibleAnswer> get possibleAnswers =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "correctAnswers")
  Set<int> get correctAnswerIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectionQuestionCopyWith<SelectionQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectionQuestionCopyWith<$Res> {
  factory $SelectionQuestionCopyWith(
          SelectionQuestion value, $Res Function(SelectionQuestion) then) =
      _$SelectionQuestionCopyWithImpl<$Res, SelectionQuestion>;
  @useResult
  $Res call(
      {String text,
      List<PossibleAnswer> possibleAnswers,
      @JsonKey(name: "correctAnswers") Set<int> correctAnswerIds});
}

/// @nodoc
class _$SelectionQuestionCopyWithImpl<$Res, $Val extends SelectionQuestion>
    implements $SelectionQuestionCopyWith<$Res> {
  _$SelectionQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? possibleAnswers = null,
    Object? correctAnswerIds = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      possibleAnswers: null == possibleAnswers
          ? _value.possibleAnswers
          : possibleAnswers // ignore: cast_nullable_to_non_nullable
              as List<PossibleAnswer>,
      correctAnswerIds: null == correctAnswerIds
          ? _value.correctAnswerIds
          : correctAnswerIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionImplCopyWith<$Res>
    implements $SelectionQuestionCopyWith<$Res> {
  factory _$$QuestionImplCopyWith(
          _$QuestionImpl value, $Res Function(_$QuestionImpl) then) =
      __$$QuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      List<PossibleAnswer> possibleAnswers,
      @JsonKey(name: "correctAnswers") Set<int> correctAnswerIds});
}

/// @nodoc
class __$$QuestionImplCopyWithImpl<$Res>
    extends _$SelectionQuestionCopyWithImpl<$Res, _$QuestionImpl>
    implements _$$QuestionImplCopyWith<$Res> {
  __$$QuestionImplCopyWithImpl(
      _$QuestionImpl _value, $Res Function(_$QuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? possibleAnswers = null,
    Object? correctAnswerIds = null,
  }) {
    return _then(_$QuestionImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      possibleAnswers: null == possibleAnswers
          ? _value._possibleAnswers
          : possibleAnswers // ignore: cast_nullable_to_non_nullable
              as List<PossibleAnswer>,
      correctAnswerIds: null == correctAnswerIds
          ? _value._correctAnswerIds
          : correctAnswerIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionImpl implements _Question {
  const _$QuestionImpl(
      {required this.text,
      required final List<PossibleAnswer> possibleAnswers,
      @JsonKey(name: "correctAnswers")
      required final Set<int> correctAnswerIds})
      : _possibleAnswers = possibleAnswers,
        _correctAnswerIds = correctAnswerIds;

  factory _$QuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionImplFromJson(json);

  @override
  final String text;
  final List<PossibleAnswer> _possibleAnswers;
  @override
  List<PossibleAnswer> get possibleAnswers {
    if (_possibleAnswers is EqualUnmodifiableListView) return _possibleAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_possibleAnswers);
  }

  final Set<int> _correctAnswerIds;
  @override
  @JsonKey(name: "correctAnswers")
  Set<int> get correctAnswerIds {
    if (_correctAnswerIds is EqualUnmodifiableSetView) return _correctAnswerIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_correctAnswerIds);
  }

  @override
  String toString() {
    return 'SelectionQuestion(text: $text, possibleAnswers: $possibleAnswers, correctAnswerIds: $correctAnswerIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionImpl &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._possibleAnswers, _possibleAnswers) &&
            const DeepCollectionEquality()
                .equals(other._correctAnswerIds, _correctAnswerIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      text,
      const DeepCollectionEquality().hash(_possibleAnswers),
      const DeepCollectionEquality().hash(_correctAnswerIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      __$$QuestionImplCopyWithImpl<_$QuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionImplToJson(
      this,
    );
  }
}

abstract class _Question implements SelectionQuestion {
  const factory _Question(
      {required final String text,
      required final List<PossibleAnswer> possibleAnswers,
      @JsonKey(name: "correctAnswers")
      required final Set<int> correctAnswerIds}) = _$QuestionImpl;

  factory _Question.fromJson(Map<String, dynamic> json) =
      _$QuestionImpl.fromJson;

  @override
  String get text;
  @override
  List<PossibleAnswer> get possibleAnswers;
  @override
  @JsonKey(name: "correctAnswers")
  Set<int> get correctAnswerIds;
  @override
  @JsonKey(ignore: true)
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SequenceQuestion _$SequenceQuestionFromJson(Map<String, dynamic> json) {
  return _SequenceQuestion.fromJson(json);
}

/// @nodoc
mixin _$SequenceQuestion {
  String get title => throw _privateConstructorUsedError;
  List<PossibleAnswer> get answers => throw _privateConstructorUsedError;
  List<int> get correctOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SequenceQuestionCopyWith<SequenceQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SequenceQuestionCopyWith<$Res> {
  factory $SequenceQuestionCopyWith(
          SequenceQuestion value, $Res Function(SequenceQuestion) then) =
      _$SequenceQuestionCopyWithImpl<$Res, SequenceQuestion>;
  @useResult
  $Res call(
      {String title, List<PossibleAnswer> answers, List<int> correctOrder});
}

/// @nodoc
class _$SequenceQuestionCopyWithImpl<$Res, $Val extends SequenceQuestion>
    implements $SequenceQuestionCopyWith<$Res> {
  _$SequenceQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? answers = null,
    Object? correctOrder = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<PossibleAnswer>,
      correctOrder: null == correctOrder
          ? _value.correctOrder
          : correctOrder // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SequenceQuestionImplCopyWith<$Res>
    implements $SequenceQuestionCopyWith<$Res> {
  factory _$$SequenceQuestionImplCopyWith(_$SequenceQuestionImpl value,
          $Res Function(_$SequenceQuestionImpl) then) =
      __$$SequenceQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, List<PossibleAnswer> answers, List<int> correctOrder});
}

/// @nodoc
class __$$SequenceQuestionImplCopyWithImpl<$Res>
    extends _$SequenceQuestionCopyWithImpl<$Res, _$SequenceQuestionImpl>
    implements _$$SequenceQuestionImplCopyWith<$Res> {
  __$$SequenceQuestionImplCopyWithImpl(_$SequenceQuestionImpl _value,
      $Res Function(_$SequenceQuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? answers = null,
    Object? correctOrder = null,
  }) {
    return _then(_$SequenceQuestionImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<PossibleAnswer>,
      correctOrder: null == correctOrder
          ? _value._correctOrder
          : correctOrder // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SequenceQuestionImpl implements _SequenceQuestion {
  const _$SequenceQuestionImpl(
      {required this.title,
      required final List<PossibleAnswer> answers,
      required final List<int> correctOrder})
      : _answers = answers,
        _correctOrder = correctOrder;

  factory _$SequenceQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SequenceQuestionImplFromJson(json);

  @override
  final String title;
  final List<PossibleAnswer> _answers;
  @override
  List<PossibleAnswer> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  final List<int> _correctOrder;
  @override
  List<int> get correctOrder {
    if (_correctOrder is EqualUnmodifiableListView) return _correctOrder;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_correctOrder);
  }

  @override
  String toString() {
    return 'SequenceQuestion(title: $title, answers: $answers, correctOrder: $correctOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SequenceQuestionImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            const DeepCollectionEquality()
                .equals(other._correctOrder, _correctOrder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      const DeepCollectionEquality().hash(_answers),
      const DeepCollectionEquality().hash(_correctOrder));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SequenceQuestionImplCopyWith<_$SequenceQuestionImpl> get copyWith =>
      __$$SequenceQuestionImplCopyWithImpl<_$SequenceQuestionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SequenceQuestionImplToJson(
      this,
    );
  }
}

abstract class _SequenceQuestion implements SequenceQuestion {
  const factory _SequenceQuestion(
      {required final String title,
      required final List<PossibleAnswer> answers,
      required final List<int> correctOrder}) = _$SequenceQuestionImpl;

  factory _SequenceQuestion.fromJson(Map<String, dynamic> json) =
      _$SequenceQuestionImpl.fromJson;

  @override
  String get title;
  @override
  List<PossibleAnswer> get answers;
  @override
  List<int> get correctOrder;
  @override
  @JsonKey(ignore: true)
  _$$SequenceQuestionImplCopyWith<_$SequenceQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserInputQuestion _$UserInputQuestionFromJson(Map<String, dynamic> json) {
  return _UserInputQuestion.fromJson(json);
}

/// @nodoc
mixin _$UserInputQuestion {
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get correctAnswer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInputQuestionCopyWith<UserInputQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInputQuestionCopyWith<$Res> {
  factory $UserInputQuestionCopyWith(
          UserInputQuestion value, $Res Function(UserInputQuestion) then) =
      _$UserInputQuestionCopyWithImpl<$Res, UserInputQuestion>;
  @useResult
  $Res call({String title, String text, String correctAnswer});
}

/// @nodoc
class _$UserInputQuestionCopyWithImpl<$Res, $Val extends UserInputQuestion>
    implements $UserInputQuestionCopyWith<$Res> {
  _$UserInputQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
    Object? correctAnswer = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInputQuestionImplCopyWith<$Res>
    implements $UserInputQuestionCopyWith<$Res> {
  factory _$$UserInputQuestionImplCopyWith(_$UserInputQuestionImpl value,
          $Res Function(_$UserInputQuestionImpl) then) =
      __$$UserInputQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String text, String correctAnswer});
}

/// @nodoc
class __$$UserInputQuestionImplCopyWithImpl<$Res>
    extends _$UserInputQuestionCopyWithImpl<$Res, _$UserInputQuestionImpl>
    implements _$$UserInputQuestionImplCopyWith<$Res> {
  __$$UserInputQuestionImplCopyWithImpl(_$UserInputQuestionImpl _value,
      $Res Function(_$UserInputQuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
    Object? correctAnswer = null,
  }) {
    return _then(_$UserInputQuestionImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInputQuestionImpl implements _UserInputQuestion {
  const _$UserInputQuestionImpl(
      {required this.title, required this.text, required this.correctAnswer});

  factory _$UserInputQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInputQuestionImplFromJson(json);

  @override
  final String title;
  @override
  final String text;
  @override
  final String correctAnswer;

  @override
  String toString() {
    return 'UserInputQuestion(title: $title, text: $text, correctAnswer: $correctAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInputQuestionImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, text, correctAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInputQuestionImplCopyWith<_$UserInputQuestionImpl> get copyWith =>
      __$$UserInputQuestionImplCopyWithImpl<_$UserInputQuestionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInputQuestionImplToJson(
      this,
    );
  }
}

abstract class _UserInputQuestion implements UserInputQuestion {
  const factory _UserInputQuestion(
      {required final String title,
      required final String text,
      required final String correctAnswer}) = _$UserInputQuestionImpl;

  factory _UserInputQuestion.fromJson(Map<String, dynamic> json) =
      _$UserInputQuestionImpl.fromJson;

  @override
  String get title;
  @override
  String get text;
  @override
  String get correctAnswer;
  @override
  @JsonKey(ignore: true)
  _$$UserInputQuestionImplCopyWith<_$UserInputQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchingQuestion _$MatchingQuestionFromJson(Map<String, dynamic> json) {
  return _MatchingQuestion.fromJson(json);
}

/// @nodoc
mixin _$MatchingQuestion {
  String get text => throw _privateConstructorUsedError;
  List<PossibleAnswer> get questions => throw _privateConstructorUsedError;
  List<PossibleAnswer> get answers => throw _privateConstructorUsedError;
  Map<int, int?> get correctMatch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchingQuestionCopyWith<MatchingQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchingQuestionCopyWith<$Res> {
  factory $MatchingQuestionCopyWith(
          MatchingQuestion value, $Res Function(MatchingQuestion) then) =
      _$MatchingQuestionCopyWithImpl<$Res, MatchingQuestion>;
  @useResult
  $Res call(
      {String text,
      List<PossibleAnswer> questions,
      List<PossibleAnswer> answers,
      Map<int, int?> correctMatch});
}

/// @nodoc
class _$MatchingQuestionCopyWithImpl<$Res, $Val extends MatchingQuestion>
    implements $MatchingQuestionCopyWith<$Res> {
  _$MatchingQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? questions = null,
    Object? answers = null,
    Object? correctMatch = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<PossibleAnswer>,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<PossibleAnswer>,
      correctMatch: null == correctMatch
          ? _value.correctMatch
          : correctMatch // ignore: cast_nullable_to_non_nullable
              as Map<int, int?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MatchingQuestionImplCopyWith<$Res>
    implements $MatchingQuestionCopyWith<$Res> {
  factory _$$MatchingQuestionImplCopyWith(_$MatchingQuestionImpl value,
          $Res Function(_$MatchingQuestionImpl) then) =
      __$$MatchingQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      List<PossibleAnswer> questions,
      List<PossibleAnswer> answers,
      Map<int, int?> correctMatch});
}

/// @nodoc
class __$$MatchingQuestionImplCopyWithImpl<$Res>
    extends _$MatchingQuestionCopyWithImpl<$Res, _$MatchingQuestionImpl>
    implements _$$MatchingQuestionImplCopyWith<$Res> {
  __$$MatchingQuestionImplCopyWithImpl(_$MatchingQuestionImpl _value,
      $Res Function(_$MatchingQuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? questions = null,
    Object? answers = null,
    Object? correctMatch = null,
  }) {
    return _then(_$MatchingQuestionImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<PossibleAnswer>,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<PossibleAnswer>,
      correctMatch: null == correctMatch
          ? _value._correctMatch
          : correctMatch // ignore: cast_nullable_to_non_nullable
              as Map<int, int?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchingQuestionImpl implements _MatchingQuestion {
  const _$MatchingQuestionImpl(
      {required this.text,
      required final List<PossibleAnswer> questions,
      required final List<PossibleAnswer> answers,
      required final Map<int, int?> correctMatch})
      : _questions = questions,
        _answers = answers,
        _correctMatch = correctMatch;

  factory _$MatchingQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchingQuestionImplFromJson(json);

  @override
  final String text;
  final List<PossibleAnswer> _questions;
  @override
  List<PossibleAnswer> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  final List<PossibleAnswer> _answers;
  @override
  List<PossibleAnswer> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  final Map<int, int?> _correctMatch;
  @override
  Map<int, int?> get correctMatch {
    if (_correctMatch is EqualUnmodifiableMapView) return _correctMatch;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_correctMatch);
  }

  @override
  String toString() {
    return 'MatchingQuestion(text: $text, questions: $questions, answers: $answers, correctMatch: $correctMatch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchingQuestionImpl &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            const DeepCollectionEquality()
                .equals(other._correctMatch, _correctMatch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      text,
      const DeepCollectionEquality().hash(_questions),
      const DeepCollectionEquality().hash(_answers),
      const DeepCollectionEquality().hash(_correctMatch));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchingQuestionImplCopyWith<_$MatchingQuestionImpl> get copyWith =>
      __$$MatchingQuestionImplCopyWithImpl<_$MatchingQuestionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchingQuestionImplToJson(
      this,
    );
  }
}

abstract class _MatchingQuestion implements MatchingQuestion {
  const factory _MatchingQuestion(
      {required final String text,
      required final List<PossibleAnswer> questions,
      required final List<PossibleAnswer> answers,
      required final Map<int, int?> correctMatch}) = _$MatchingQuestionImpl;

  factory _MatchingQuestion.fromJson(Map<String, dynamic> json) =
      _$MatchingQuestionImpl.fromJson;

  @override
  String get text;
  @override
  List<PossibleAnswer> get questions;
  @override
  List<PossibleAnswer> get answers;
  @override
  Map<int, int?> get correctMatch;
  @override
  @JsonKey(ignore: true)
  _$$MatchingQuestionImplCopyWith<_$MatchingQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
