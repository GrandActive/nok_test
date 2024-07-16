// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'possible_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PossibleAnswer _$PossibleAnswerFromJson(Map<String, dynamic> json) {
  return _PossibleAnswer.fromJson(json);
}

/// @nodoc
mixin _$PossibleAnswer {
  int get index => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PossibleAnswerCopyWith<PossibleAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PossibleAnswerCopyWith<$Res> {
  factory $PossibleAnswerCopyWith(
          PossibleAnswer value, $Res Function(PossibleAnswer) then) =
      _$PossibleAnswerCopyWithImpl<$Res, PossibleAnswer>;
  @useResult
  $Res call({int index, String text});
}

/// @nodoc
class _$PossibleAnswerCopyWithImpl<$Res, $Val extends PossibleAnswer>
    implements $PossibleAnswerCopyWith<$Res> {
  _$PossibleAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PossibleAnswerImplCopyWith<$Res>
    implements $PossibleAnswerCopyWith<$Res> {
  factory _$$PossibleAnswerImplCopyWith(_$PossibleAnswerImpl value,
          $Res Function(_$PossibleAnswerImpl) then) =
      __$$PossibleAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, String text});
}

/// @nodoc
class __$$PossibleAnswerImplCopyWithImpl<$Res>
    extends _$PossibleAnswerCopyWithImpl<$Res, _$PossibleAnswerImpl>
    implements _$$PossibleAnswerImplCopyWith<$Res> {
  __$$PossibleAnswerImplCopyWithImpl(
      _$PossibleAnswerImpl _value, $Res Function(_$PossibleAnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? text = null,
  }) {
    return _then(_$PossibleAnswerImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PossibleAnswerImpl implements _PossibleAnswer {
  const _$PossibleAnswerImpl({required this.index, required this.text});

  factory _$PossibleAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PossibleAnswerImplFromJson(json);

  @override
  final int index;
  @override
  final String text;

  @override
  String toString() {
    return 'PossibleAnswer(index: $index, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PossibleAnswerImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PossibleAnswerImplCopyWith<_$PossibleAnswerImpl> get copyWith =>
      __$$PossibleAnswerImplCopyWithImpl<_$PossibleAnswerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PossibleAnswerImplToJson(
      this,
    );
  }
}

abstract class _PossibleAnswer implements PossibleAnswer {
  const factory _PossibleAnswer(
      {required final int index,
      required final String text}) = _$PossibleAnswerImpl;

  factory _PossibleAnswer.fromJson(Map<String, dynamic> json) =
      _$PossibleAnswerImpl.fromJson;

  @override
  int get index;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$PossibleAnswerImplCopyWith<_$PossibleAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
