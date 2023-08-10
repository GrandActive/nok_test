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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_QuestionCopyWith<$Res>
    implements $SelectionQuestionCopyWith<$Res> {
  factory _$$_QuestionCopyWith(
          _$_Question value, $Res Function(_$_Question) then) =
      __$$_QuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      List<PossibleAnswer> possibleAnswers,
      @JsonKey(name: "correctAnswers") Set<int> correctAnswerIds});
}

/// @nodoc
class __$$_QuestionCopyWithImpl<$Res>
    extends _$SelectionQuestionCopyWithImpl<$Res, _$_Question>
    implements _$$_QuestionCopyWith<$Res> {
  __$$_QuestionCopyWithImpl(
      _$_Question _value, $Res Function(_$_Question) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? possibleAnswers = null,
    Object? correctAnswerIds = null,
  }) {
    return _then(_$_Question(
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
class _$_Question implements _Question {
  const _$_Question(
      {required this.text,
      required final List<PossibleAnswer> possibleAnswers,
      @JsonKey(name: "correctAnswers")
          required final Set<int> correctAnswerIds})
      : _possibleAnswers = possibleAnswers,
        _correctAnswerIds = correctAnswerIds;

  factory _$_Question.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Question &&
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
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      __$$_QuestionCopyWithImpl<_$_Question>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionToJson(
      this,
    );
  }
}

abstract class _Question implements SelectionQuestion {
  const factory _Question(
      {required final String text,
      required final List<PossibleAnswer> possibleAnswers,
      @JsonKey(name: "correctAnswers")
          required final Set<int> correctAnswerIds}) = _$_Question;

  factory _Question.fromJson(Map<String, dynamic> json) = _$_Question.fromJson;

  @override
  String get text;
  @override
  List<PossibleAnswer> get possibleAnswers;
  @override
  @JsonKey(name: "correctAnswers")
  Set<int> get correctAnswerIds;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
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
abstract class _$$_SequenceQuestionCopyWith<$Res>
    implements $SequenceQuestionCopyWith<$Res> {
  factory _$$_SequenceQuestionCopyWith(
          _$_SequenceQuestion value, $Res Function(_$_SequenceQuestion) then) =
      __$$_SequenceQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, List<PossibleAnswer> answers, List<int> correctOrder});
}

/// @nodoc
class __$$_SequenceQuestionCopyWithImpl<$Res>
    extends _$SequenceQuestionCopyWithImpl<$Res, _$_SequenceQuestion>
    implements _$$_SequenceQuestionCopyWith<$Res> {
  __$$_SequenceQuestionCopyWithImpl(
      _$_SequenceQuestion _value, $Res Function(_$_SequenceQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? answers = null,
    Object? correctOrder = null,
  }) {
    return _then(_$_SequenceQuestion(
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
class _$_SequenceQuestion implements _SequenceQuestion {
  const _$_SequenceQuestion(
      {required this.title,
      required final List<PossibleAnswer> answers,
      required final List<int> correctOrder})
      : _answers = answers,
        _correctOrder = correctOrder;

  factory _$_SequenceQuestion.fromJson(Map<String, dynamic> json) =>
      _$$_SequenceQuestionFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SequenceQuestion &&
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
  _$$_SequenceQuestionCopyWith<_$_SequenceQuestion> get copyWith =>
      __$$_SequenceQuestionCopyWithImpl<_$_SequenceQuestion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SequenceQuestionToJson(
      this,
    );
  }
}

abstract class _SequenceQuestion implements SequenceQuestion {
  const factory _SequenceQuestion(
      {required final String title,
      required final List<PossibleAnswer> answers,
      required final List<int> correctOrder}) = _$_SequenceQuestion;

  factory _SequenceQuestion.fromJson(Map<String, dynamic> json) =
      _$_SequenceQuestion.fromJson;

  @override
  String get title;
  @override
  List<PossibleAnswer> get answers;
  @override
  List<int> get correctOrder;
  @override
  @JsonKey(ignore: true)
  _$$_SequenceQuestionCopyWith<_$_SequenceQuestion> get copyWith =>
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
abstract class _$$_UserInputQuestionCopyWith<$Res>
    implements $UserInputQuestionCopyWith<$Res> {
  factory _$$_UserInputQuestionCopyWith(_$_UserInputQuestion value,
          $Res Function(_$_UserInputQuestion) then) =
      __$$_UserInputQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String text, String correctAnswer});
}

/// @nodoc
class __$$_UserInputQuestionCopyWithImpl<$Res>
    extends _$UserInputQuestionCopyWithImpl<$Res, _$_UserInputQuestion>
    implements _$$_UserInputQuestionCopyWith<$Res> {
  __$$_UserInputQuestionCopyWithImpl(
      _$_UserInputQuestion _value, $Res Function(_$_UserInputQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
    Object? correctAnswer = null,
  }) {
    return _then(_$_UserInputQuestion(
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
class _$_UserInputQuestion implements _UserInputQuestion {
  const _$_UserInputQuestion(
      {required this.title, required this.text, required this.correctAnswer});

  factory _$_UserInputQuestion.fromJson(Map<String, dynamic> json) =>
      _$$_UserInputQuestionFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInputQuestion &&
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
  _$$_UserInputQuestionCopyWith<_$_UserInputQuestion> get copyWith =>
      __$$_UserInputQuestionCopyWithImpl<_$_UserInputQuestion>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserInputQuestionToJson(
      this,
    );
  }
}

abstract class _UserInputQuestion implements UserInputQuestion {
  const factory _UserInputQuestion(
      {required final String title,
      required final String text,
      required final String correctAnswer}) = _$_UserInputQuestion;

  factory _UserInputQuestion.fromJson(Map<String, dynamic> json) =
      _$_UserInputQuestion.fromJson;

  @override
  String get title;
  @override
  String get text;
  @override
  String get correctAnswer;
  @override
  @JsonKey(ignore: true)
  _$$_UserInputQuestionCopyWith<_$_UserInputQuestion> get copyWith =>
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
abstract class _$$_MatchingQuestionCopyWith<$Res>
    implements $MatchingQuestionCopyWith<$Res> {
  factory _$$_MatchingQuestionCopyWith(
          _$_MatchingQuestion value, $Res Function(_$_MatchingQuestion) then) =
      __$$_MatchingQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      List<PossibleAnswer> questions,
      List<PossibleAnswer> answers,
      Map<int, int?> correctMatch});
}

/// @nodoc
class __$$_MatchingQuestionCopyWithImpl<$Res>
    extends _$MatchingQuestionCopyWithImpl<$Res, _$_MatchingQuestion>
    implements _$$_MatchingQuestionCopyWith<$Res> {
  __$$_MatchingQuestionCopyWithImpl(
      _$_MatchingQuestion _value, $Res Function(_$_MatchingQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? questions = null,
    Object? answers = null,
    Object? correctMatch = null,
  }) {
    return _then(_$_MatchingQuestion(
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
class _$_MatchingQuestion implements _MatchingQuestion {
  const _$_MatchingQuestion(
      {required this.text,
      required final List<PossibleAnswer> questions,
      required final List<PossibleAnswer> answers,
      required final Map<int, int?> correctMatch})
      : _questions = questions,
        _answers = answers,
        _correctMatch = correctMatch;

  factory _$_MatchingQuestion.fromJson(Map<String, dynamic> json) =>
      _$$_MatchingQuestionFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchingQuestion &&
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
  _$$_MatchingQuestionCopyWith<_$_MatchingQuestion> get copyWith =>
      __$$_MatchingQuestionCopyWithImpl<_$_MatchingQuestion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchingQuestionToJson(
      this,
    );
  }
}

abstract class _MatchingQuestion implements MatchingQuestion {
  const factory _MatchingQuestion(
      {required final String text,
      required final List<PossibleAnswer> questions,
      required final List<PossibleAnswer> answers,
      required final Map<int, int?> correctMatch}) = _$_MatchingQuestion;

  factory _MatchingQuestion.fromJson(Map<String, dynamic> json) =
      _$_MatchingQuestion.fromJson;

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
  _$$_MatchingQuestionCopyWith<_$_MatchingQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}
