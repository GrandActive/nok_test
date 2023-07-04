// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestSelectionQuestion _$TestSelectionQuestionFromJson(
    Map<String, dynamic> json) {
  return _TestQuestion.fromJson(json);
}

/// @nodoc
mixin _$TestSelectionQuestion {
  SelectionQuestion get source => throw _privateConstructorUsedError;
  set source(SelectionQuestion value) => throw _privateConstructorUsedError;
  Set<int> get userAnswers => throw _privateConstructorUsedError;
  set userAnswers(Set<int> value) => throw _privateConstructorUsedError;
  bool? get isAnsweredCorrectly => throw _privateConstructorUsedError;
  set isAnsweredCorrectly(bool? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestSelectionQuestionCopyWith<TestSelectionQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestSelectionQuestionCopyWith<$Res> {
  factory $TestSelectionQuestionCopyWith(TestSelectionQuestion value,
          $Res Function(TestSelectionQuestion) then) =
      _$TestSelectionQuestionCopyWithImpl<$Res, TestSelectionQuestion>;
  @useResult
  $Res call(
      {SelectionQuestion source,
      Set<int> userAnswers,
      bool? isAnsweredCorrectly});

  $SelectionQuestionCopyWith<$Res> get source;
}

/// @nodoc
class _$TestSelectionQuestionCopyWithImpl<$Res,
        $Val extends TestSelectionQuestion>
    implements $TestSelectionQuestionCopyWith<$Res> {
  _$TestSelectionQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? userAnswers = null,
    Object? isAnsweredCorrectly = freezed,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as SelectionQuestion,
      userAnswers: null == userAnswers
          ? _value.userAnswers
          : userAnswers // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      isAnsweredCorrectly: freezed == isAnsweredCorrectly
          ? _value.isAnsweredCorrectly
          : isAnsweredCorrectly // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SelectionQuestionCopyWith<$Res> get source {
    return $SelectionQuestionCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TestQuestionCopyWith<$Res>
    implements $TestSelectionQuestionCopyWith<$Res> {
  factory _$$_TestQuestionCopyWith(
          _$_TestQuestion value, $Res Function(_$_TestQuestion) then) =
      __$$_TestQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SelectionQuestion source,
      Set<int> userAnswers,
      bool? isAnsweredCorrectly});

  @override
  $SelectionQuestionCopyWith<$Res> get source;
}

/// @nodoc
class __$$_TestQuestionCopyWithImpl<$Res>
    extends _$TestSelectionQuestionCopyWithImpl<$Res, _$_TestQuestion>
    implements _$$_TestQuestionCopyWith<$Res> {
  __$$_TestQuestionCopyWithImpl(
      _$_TestQuestion _value, $Res Function(_$_TestQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? userAnswers = null,
    Object? isAnsweredCorrectly = freezed,
  }) {
    return _then(_$_TestQuestion(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as SelectionQuestion,
      userAnswers: null == userAnswers
          ? _value.userAnswers
          : userAnswers // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      isAnsweredCorrectly: freezed == isAnsweredCorrectly
          ? _value.isAnsweredCorrectly
          : isAnsweredCorrectly // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TestQuestion implements _TestQuestion {
  _$_TestQuestion(
      {required this.source,
      this.userAnswers = const {},
      this.isAnsweredCorrectly});

  factory _$_TestQuestion.fromJson(Map<String, dynamic> json) =>
      _$$_TestQuestionFromJson(json);

  @override
  SelectionQuestion source;
  @override
  @JsonKey()
  Set<int> userAnswers;
  @override
  bool? isAnsweredCorrectly;

  @override
  String toString() {
    return 'TestSelectionQuestion(source: $source, userAnswers: $userAnswers, isAnsweredCorrectly: $isAnsweredCorrectly)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestQuestionCopyWith<_$_TestQuestion> get copyWith =>
      __$$_TestQuestionCopyWithImpl<_$_TestQuestion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestQuestionToJson(
      this,
    );
  }
}

abstract class _TestQuestion implements TestSelectionQuestion {
  factory _TestQuestion(
      {required SelectionQuestion source,
      Set<int> userAnswers,
      bool? isAnsweredCorrectly}) = _$_TestQuestion;

  factory _TestQuestion.fromJson(Map<String, dynamic> json) =
      _$_TestQuestion.fromJson;

  @override
  SelectionQuestion get source;
  set source(SelectionQuestion value);
  @override
  Set<int> get userAnswers;
  set userAnswers(Set<int> value);
  @override
  bool? get isAnsweredCorrectly;
  set isAnsweredCorrectly(bool? value);
  @override
  @JsonKey(ignore: true)
  _$$_TestQuestionCopyWith<_$_TestQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

TestUserInputQuestion _$TestUserInputQuestionFromJson(
    Map<String, dynamic> json) {
  return _TestUserInputQuestion.fromJson(json);
}

/// @nodoc
mixin _$TestUserInputQuestion {
  UserInputQuestion get source => throw _privateConstructorUsedError;
  set source(UserInputQuestion value) => throw _privateConstructorUsedError;
  String? get userAnswer => throw _privateConstructorUsedError;
  set userAnswer(String? value) => throw _privateConstructorUsedError;
  bool? get isAnsweredCorrectly => throw _privateConstructorUsedError;
  set isAnsweredCorrectly(bool? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestUserInputQuestionCopyWith<TestUserInputQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestUserInputQuestionCopyWith<$Res> {
  factory $TestUserInputQuestionCopyWith(TestUserInputQuestion value,
          $Res Function(TestUserInputQuestion) then) =
      _$TestUserInputQuestionCopyWithImpl<$Res, TestUserInputQuestion>;
  @useResult
  $Res call(
      {UserInputQuestion source,
      String? userAnswer,
      bool? isAnsweredCorrectly});

  $UserInputQuestionCopyWith<$Res> get source;
}

/// @nodoc
class _$TestUserInputQuestionCopyWithImpl<$Res,
        $Val extends TestUserInputQuestion>
    implements $TestUserInputQuestionCopyWith<$Res> {
  _$TestUserInputQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? userAnswer = freezed,
    Object? isAnsweredCorrectly = freezed,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as UserInputQuestion,
      userAnswer: freezed == userAnswer
          ? _value.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      isAnsweredCorrectly: freezed == isAnsweredCorrectly
          ? _value.isAnsweredCorrectly
          : isAnsweredCorrectly // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInputQuestionCopyWith<$Res> get source {
    return $UserInputQuestionCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TestUserInputQuestionCopyWith<$Res>
    implements $TestUserInputQuestionCopyWith<$Res> {
  factory _$$_TestUserInputQuestionCopyWith(_$_TestUserInputQuestion value,
          $Res Function(_$_TestUserInputQuestion) then) =
      __$$_TestUserInputQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserInputQuestion source,
      String? userAnswer,
      bool? isAnsweredCorrectly});

  @override
  $UserInputQuestionCopyWith<$Res> get source;
}

/// @nodoc
class __$$_TestUserInputQuestionCopyWithImpl<$Res>
    extends _$TestUserInputQuestionCopyWithImpl<$Res, _$_TestUserInputQuestion>
    implements _$$_TestUserInputQuestionCopyWith<$Res> {
  __$$_TestUserInputQuestionCopyWithImpl(_$_TestUserInputQuestion _value,
      $Res Function(_$_TestUserInputQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? userAnswer = freezed,
    Object? isAnsweredCorrectly = freezed,
  }) {
    return _then(_$_TestUserInputQuestion(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as UserInputQuestion,
      userAnswer: freezed == userAnswer
          ? _value.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      isAnsweredCorrectly: freezed == isAnsweredCorrectly
          ? _value.isAnsweredCorrectly
          : isAnsweredCorrectly // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TestUserInputQuestion implements _TestUserInputQuestion {
  _$_TestUserInputQuestion(
      {required this.source, this.userAnswer, this.isAnsweredCorrectly});

  factory _$_TestUserInputQuestion.fromJson(Map<String, dynamic> json) =>
      _$$_TestUserInputQuestionFromJson(json);

  @override
  UserInputQuestion source;
  @override
  String? userAnswer;
  @override
  bool? isAnsweredCorrectly;

  @override
  String toString() {
    return 'TestUserInputQuestion(source: $source, userAnswer: $userAnswer, isAnsweredCorrectly: $isAnsweredCorrectly)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestUserInputQuestionCopyWith<_$_TestUserInputQuestion> get copyWith =>
      __$$_TestUserInputQuestionCopyWithImpl<_$_TestUserInputQuestion>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestUserInputQuestionToJson(
      this,
    );
  }
}

abstract class _TestUserInputQuestion implements TestUserInputQuestion {
  factory _TestUserInputQuestion(
      {required UserInputQuestion source,
      String? userAnswer,
      bool? isAnsweredCorrectly}) = _$_TestUserInputQuestion;

  factory _TestUserInputQuestion.fromJson(Map<String, dynamic> json) =
      _$_TestUserInputQuestion.fromJson;

  @override
  UserInputQuestion get source;
  set source(UserInputQuestion value);
  @override
  String? get userAnswer;
  set userAnswer(String? value);
  @override
  bool? get isAnsweredCorrectly;
  set isAnsweredCorrectly(bool? value);
  @override
  @JsonKey(ignore: true)
  _$$_TestUserInputQuestionCopyWith<_$_TestUserInputQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

TestSequenceQuestion _$TestSequenceQuestionFromJson(Map<String, dynamic> json) {
  return _TestSequenceQuestion.fromJson(json);
}

/// @nodoc
mixin _$TestSequenceQuestion {
  SequenceQuestion get source => throw _privateConstructorUsedError;
  set source(SequenceQuestion value) => throw _privateConstructorUsedError;
  List<int>? get userAnswer => throw _privateConstructorUsedError;
  set userAnswer(List<int>? value) => throw _privateConstructorUsedError;
  bool? get isAnsweredCorrectly => throw _privateConstructorUsedError;
  set isAnsweredCorrectly(bool? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestSequenceQuestionCopyWith<TestSequenceQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestSequenceQuestionCopyWith<$Res> {
  factory $TestSequenceQuestionCopyWith(TestSequenceQuestion value,
          $Res Function(TestSequenceQuestion) then) =
      _$TestSequenceQuestionCopyWithImpl<$Res, TestSequenceQuestion>;
  @useResult
  $Res call(
      {SequenceQuestion source,
      List<int>? userAnswer,
      bool? isAnsweredCorrectly});

  $SequenceQuestionCopyWith<$Res> get source;
}

/// @nodoc
class _$TestSequenceQuestionCopyWithImpl<$Res,
        $Val extends TestSequenceQuestion>
    implements $TestSequenceQuestionCopyWith<$Res> {
  _$TestSequenceQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? userAnswer = freezed,
    Object? isAnsweredCorrectly = freezed,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as SequenceQuestion,
      userAnswer: freezed == userAnswer
          ? _value.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      isAnsweredCorrectly: freezed == isAnsweredCorrectly
          ? _value.isAnsweredCorrectly
          : isAnsweredCorrectly // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SequenceQuestionCopyWith<$Res> get source {
    return $SequenceQuestionCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TestSequenceQuestionCopyWith<$Res>
    implements $TestSequenceQuestionCopyWith<$Res> {
  factory _$$_TestSequenceQuestionCopyWith(_$_TestSequenceQuestion value,
          $Res Function(_$_TestSequenceQuestion) then) =
      __$$_TestSequenceQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SequenceQuestion source,
      List<int>? userAnswer,
      bool? isAnsweredCorrectly});

  @override
  $SequenceQuestionCopyWith<$Res> get source;
}

/// @nodoc
class __$$_TestSequenceQuestionCopyWithImpl<$Res>
    extends _$TestSequenceQuestionCopyWithImpl<$Res, _$_TestSequenceQuestion>
    implements _$$_TestSequenceQuestionCopyWith<$Res> {
  __$$_TestSequenceQuestionCopyWithImpl(_$_TestSequenceQuestion _value,
      $Res Function(_$_TestSequenceQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? userAnswer = freezed,
    Object? isAnsweredCorrectly = freezed,
  }) {
    return _then(_$_TestSequenceQuestion(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as SequenceQuestion,
      userAnswer: freezed == userAnswer
          ? _value.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      isAnsweredCorrectly: freezed == isAnsweredCorrectly
          ? _value.isAnsweredCorrectly
          : isAnsweredCorrectly // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TestSequenceQuestion implements _TestSequenceQuestion {
  _$_TestSequenceQuestion(
      {required this.source, this.userAnswer, this.isAnsweredCorrectly});

  factory _$_TestSequenceQuestion.fromJson(Map<String, dynamic> json) =>
      _$$_TestSequenceQuestionFromJson(json);

  @override
  SequenceQuestion source;
  @override
  List<int>? userAnswer;
  @override
  bool? isAnsweredCorrectly;

  @override
  String toString() {
    return 'TestSequenceQuestion(source: $source, userAnswer: $userAnswer, isAnsweredCorrectly: $isAnsweredCorrectly)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestSequenceQuestionCopyWith<_$_TestSequenceQuestion> get copyWith =>
      __$$_TestSequenceQuestionCopyWithImpl<_$_TestSequenceQuestion>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestSequenceQuestionToJson(
      this,
    );
  }
}

abstract class _TestSequenceQuestion implements TestSequenceQuestion {
  factory _TestSequenceQuestion(
      {required SequenceQuestion source,
      List<int>? userAnswer,
      bool? isAnsweredCorrectly}) = _$_TestSequenceQuestion;

  factory _TestSequenceQuestion.fromJson(Map<String, dynamic> json) =
      _$_TestSequenceQuestion.fromJson;

  @override
  SequenceQuestion get source;
  set source(SequenceQuestion value);
  @override
  List<int>? get userAnswer;
  set userAnswer(List<int>? value);
  @override
  bool? get isAnsweredCorrectly;
  set isAnsweredCorrectly(bool? value);
  @override
  @JsonKey(ignore: true)
  _$$_TestSequenceQuestionCopyWith<_$_TestSequenceQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

TestMatchingQuestion _$TestMatchingQuestionFromJson(Map<String, dynamic> json) {
  return _TestMatchingQuestion.fromJson(json);
}

/// @nodoc
mixin _$TestMatchingQuestion {
  MatchingQuestion get source => throw _privateConstructorUsedError;
  set source(MatchingQuestion value) => throw _privateConstructorUsedError;
  Map<int, int?>? get userAnswer => throw _privateConstructorUsedError;
  set userAnswer(Map<int, int?>? value) => throw _privateConstructorUsedError;
  bool? get isAnsweredCorrectly => throw _privateConstructorUsedError;
  set isAnsweredCorrectly(bool? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestMatchingQuestionCopyWith<TestMatchingQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestMatchingQuestionCopyWith<$Res> {
  factory $TestMatchingQuestionCopyWith(TestMatchingQuestion value,
          $Res Function(TestMatchingQuestion) then) =
      _$TestMatchingQuestionCopyWithImpl<$Res, TestMatchingQuestion>;
  @useResult
  $Res call(
      {MatchingQuestion source,
      Map<int, int?>? userAnswer,
      bool? isAnsweredCorrectly});

  $MatchingQuestionCopyWith<$Res> get source;
}

/// @nodoc
class _$TestMatchingQuestionCopyWithImpl<$Res,
        $Val extends TestMatchingQuestion>
    implements $TestMatchingQuestionCopyWith<$Res> {
  _$TestMatchingQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? userAnswer = freezed,
    Object? isAnsweredCorrectly = freezed,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as MatchingQuestion,
      userAnswer: freezed == userAnswer
          ? _value.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as Map<int, int?>?,
      isAnsweredCorrectly: freezed == isAnsweredCorrectly
          ? _value.isAnsweredCorrectly
          : isAnsweredCorrectly // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MatchingQuestionCopyWith<$Res> get source {
    return $MatchingQuestionCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TestMatchingQuestionCopyWith<$Res>
    implements $TestMatchingQuestionCopyWith<$Res> {
  factory _$$_TestMatchingQuestionCopyWith(_$_TestMatchingQuestion value,
          $Res Function(_$_TestMatchingQuestion) then) =
      __$$_TestMatchingQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MatchingQuestion source,
      Map<int, int?>? userAnswer,
      bool? isAnsweredCorrectly});

  @override
  $MatchingQuestionCopyWith<$Res> get source;
}

/// @nodoc
class __$$_TestMatchingQuestionCopyWithImpl<$Res>
    extends _$TestMatchingQuestionCopyWithImpl<$Res, _$_TestMatchingQuestion>
    implements _$$_TestMatchingQuestionCopyWith<$Res> {
  __$$_TestMatchingQuestionCopyWithImpl(_$_TestMatchingQuestion _value,
      $Res Function(_$_TestMatchingQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? userAnswer = freezed,
    Object? isAnsweredCorrectly = freezed,
  }) {
    return _then(_$_TestMatchingQuestion(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as MatchingQuestion,
      userAnswer: freezed == userAnswer
          ? _value.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as Map<int, int?>?,
      isAnsweredCorrectly: freezed == isAnsweredCorrectly
          ? _value.isAnsweredCorrectly
          : isAnsweredCorrectly // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TestMatchingQuestion implements _TestMatchingQuestion {
  _$_TestMatchingQuestion(
      {required this.source, this.userAnswer, this.isAnsweredCorrectly});

  factory _$_TestMatchingQuestion.fromJson(Map<String, dynamic> json) =>
      _$$_TestMatchingQuestionFromJson(json);

  @override
  MatchingQuestion source;
  @override
  Map<int, int?>? userAnswer;
  @override
  bool? isAnsweredCorrectly;

  @override
  String toString() {
    return 'TestMatchingQuestion(source: $source, userAnswer: $userAnswer, isAnsweredCorrectly: $isAnsweredCorrectly)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestMatchingQuestionCopyWith<_$_TestMatchingQuestion> get copyWith =>
      __$$_TestMatchingQuestionCopyWithImpl<_$_TestMatchingQuestion>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestMatchingQuestionToJson(
      this,
    );
  }
}

abstract class _TestMatchingQuestion implements TestMatchingQuestion {
  factory _TestMatchingQuestion(
      {required MatchingQuestion source,
      Map<int, int?>? userAnswer,
      bool? isAnsweredCorrectly}) = _$_TestMatchingQuestion;

  factory _TestMatchingQuestion.fromJson(Map<String, dynamic> json) =
      _$_TestMatchingQuestion.fromJson;

  @override
  MatchingQuestion get source;
  set source(MatchingQuestion value);
  @override
  Map<int, int?>? get userAnswer;
  set userAnswer(Map<int, int?>? value);
  @override
  bool? get isAnsweredCorrectly;
  set isAnsweredCorrectly(bool? value);
  @override
  @JsonKey(ignore: true)
  _$$_TestMatchingQuestionCopyWith<_$_TestMatchingQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}
