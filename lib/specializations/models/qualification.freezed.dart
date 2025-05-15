// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qualification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Qualification {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;
  int get testQuestionCount => throw _privateConstructorUsedError;
  int get correctAnswerCount => throw _privateConstructorUsedError;

  /// Create a copy of Qualification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QualificationCopyWith<Qualification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QualificationCopyWith<$Res> {
  factory $QualificationCopyWith(
          Qualification value, $Res Function(Qualification) then) =
      _$QualificationCopyWithImpl<$Res, Qualification>;
  @useResult
  $Res call(
      {String id,
      String name,
      int cost,
      int testQuestionCount,
      int correctAnswerCount});
}

/// @nodoc
class _$QualificationCopyWithImpl<$Res, $Val extends Qualification>
    implements $QualificationCopyWith<$Res> {
  _$QualificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Qualification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cost = null,
    Object? testQuestionCount = null,
    Object? correctAnswerCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      testQuestionCount: null == testQuestionCount
          ? _value.testQuestionCount
          : testQuestionCount // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswerCount: null == correctAnswerCount
          ? _value.correctAnswerCount
          : correctAnswerCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QualificationImplCopyWith<$Res>
    implements $QualificationCopyWith<$Res> {
  factory _$$QualificationImplCopyWith(
          _$QualificationImpl value, $Res Function(_$QualificationImpl) then) =
      __$$QualificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      int cost,
      int testQuestionCount,
      int correctAnswerCount});
}

/// @nodoc
class __$$QualificationImplCopyWithImpl<$Res>
    extends _$QualificationCopyWithImpl<$Res, _$QualificationImpl>
    implements _$$QualificationImplCopyWith<$Res> {
  __$$QualificationImplCopyWithImpl(
      _$QualificationImpl _value, $Res Function(_$QualificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Qualification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cost = null,
    Object? testQuestionCount = null,
    Object? correctAnswerCount = null,
  }) {
    return _then(_$QualificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      testQuestionCount: null == testQuestionCount
          ? _value.testQuestionCount
          : testQuestionCount // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswerCount: null == correctAnswerCount
          ? _value.correctAnswerCount
          : correctAnswerCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QualificationImpl implements _Qualification {
  const _$QualificationImpl(
      {required this.id,
      required this.name,
      required this.cost,
      required this.testQuestionCount,
      required this.correctAnswerCount});

  @override
  final String id;
  @override
  final String name;
  @override
  final int cost;
  @override
  final int testQuestionCount;
  @override
  final int correctAnswerCount;

  @override
  String toString() {
    return 'Qualification(id: $id, name: $name, cost: $cost, testQuestionCount: $testQuestionCount, correctAnswerCount: $correctAnswerCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QualificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.testQuestionCount, testQuestionCount) ||
                other.testQuestionCount == testQuestionCount) &&
            (identical(other.correctAnswerCount, correctAnswerCount) ||
                other.correctAnswerCount == correctAnswerCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, cost, testQuestionCount, correctAnswerCount);

  /// Create a copy of Qualification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QualificationImplCopyWith<_$QualificationImpl> get copyWith =>
      __$$QualificationImplCopyWithImpl<_$QualificationImpl>(this, _$identity);
}

abstract class _Qualification implements Qualification {
  const factory _Qualification(
      {required final String id,
      required final String name,
      required final int cost,
      required final int testQuestionCount,
      required final int correctAnswerCount}) = _$QualificationImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  int get cost;
  @override
  int get testQuestionCount;
  @override
  int get correctAnswerCount;

  /// Create a copy of Qualification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QualificationImplCopyWith<_$QualificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
