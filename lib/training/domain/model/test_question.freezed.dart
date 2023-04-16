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

TestQuestion _$TestQuestionFromJson(Map<String, dynamic> json) {
  return _TestQuestion.fromJson(json);
}

/// @nodoc
mixin _$TestQuestion {
  Question get source => throw _privateConstructorUsedError;
  set source(Question value) => throw _privateConstructorUsedError;
  Set<int> get userAnswers => throw _privateConstructorUsedError;
  set userAnswers(Set<int> value) => throw _privateConstructorUsedError;
  bool? get isAnsweredCorrectly => throw _privateConstructorUsedError;
  set isAnsweredCorrectly(bool? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestQuestionCopyWith<TestQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestQuestionCopyWith<$Res> {
  factory $TestQuestionCopyWith(
          TestQuestion value, $Res Function(TestQuestion) then) =
      _$TestQuestionCopyWithImpl<$Res, TestQuestion>;
  @useResult
  $Res call({Question source, Set<int> userAnswers, bool? isAnsweredCorrectly});

  $QuestionCopyWith<$Res> get source;
}

/// @nodoc
class _$TestQuestionCopyWithImpl<$Res, $Val extends TestQuestion>
    implements $TestQuestionCopyWith<$Res> {
  _$TestQuestionCopyWithImpl(this._value, this._then);

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
              as Question,
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
  $QuestionCopyWith<$Res> get source {
    return $QuestionCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TestQuestionCopyWith<$Res>
    implements $TestQuestionCopyWith<$Res> {
  factory _$$_TestQuestionCopyWith(
          _$_TestQuestion value, $Res Function(_$_TestQuestion) then) =
      __$$_TestQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Question source, Set<int> userAnswers, bool? isAnsweredCorrectly});

  @override
  $QuestionCopyWith<$Res> get source;
}

/// @nodoc
class __$$_TestQuestionCopyWithImpl<$Res>
    extends _$TestQuestionCopyWithImpl<$Res, _$_TestQuestion>
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
              as Question,
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
      required this.isAnsweredCorrectly});

  factory _$_TestQuestion.fromJson(Map<String, dynamic> json) =>
      _$$_TestQuestionFromJson(json);

  @override
  Question source;
  @override
  @JsonKey()
  Set<int> userAnswers;
  @override
  bool? isAnsweredCorrectly;

  @override
  String toString() {
    return 'TestQuestion(source: $source, userAnswers: $userAnswers, isAnsweredCorrectly: $isAnsweredCorrectly)';
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

abstract class _TestQuestion implements TestQuestion {
  factory _TestQuestion(
      {required Question source,
      Set<int> userAnswers,
      required bool? isAnsweredCorrectly}) = _$_TestQuestion;

  factory _TestQuestion.fromJson(Map<String, dynamic> json) =
      _$_TestQuestion.fromJson;

  @override
  Question get source;
  set source(Question value);
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
