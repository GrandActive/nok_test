// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_payment_data_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetPaymentDataBody _$GetPaymentDataBodyFromJson(Map<String, dynamic> json) {
  return _GetPaymentDataBody.fromJson(json);
}

/// @nodoc
mixin _$GetPaymentDataBody {
  String get userToken => throw _privateConstructorUsedError;
  String get qualificationId => throw _privateConstructorUsedError;

  /// Serializes this GetPaymentDataBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetPaymentDataBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetPaymentDataBodyCopyWith<GetPaymentDataBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPaymentDataBodyCopyWith<$Res> {
  factory $GetPaymentDataBodyCopyWith(
          GetPaymentDataBody value, $Res Function(GetPaymentDataBody) then) =
      _$GetPaymentDataBodyCopyWithImpl<$Res, GetPaymentDataBody>;
  @useResult
  $Res call({String userToken, String qualificationId});
}

/// @nodoc
class _$GetPaymentDataBodyCopyWithImpl<$Res, $Val extends GetPaymentDataBody>
    implements $GetPaymentDataBodyCopyWith<$Res> {
  _$GetPaymentDataBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetPaymentDataBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userToken = null,
    Object? qualificationId = null,
  }) {
    return _then(_value.copyWith(
      userToken: null == userToken
          ? _value.userToken
          : userToken // ignore: cast_nullable_to_non_nullable
              as String,
      qualificationId: null == qualificationId
          ? _value.qualificationId
          : qualificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPaymentDataBodyImplCopyWith<$Res>
    implements $GetPaymentDataBodyCopyWith<$Res> {
  factory _$$GetPaymentDataBodyImplCopyWith(_$GetPaymentDataBodyImpl value,
          $Res Function(_$GetPaymentDataBodyImpl) then) =
      __$$GetPaymentDataBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userToken, String qualificationId});
}

/// @nodoc
class __$$GetPaymentDataBodyImplCopyWithImpl<$Res>
    extends _$GetPaymentDataBodyCopyWithImpl<$Res, _$GetPaymentDataBodyImpl>
    implements _$$GetPaymentDataBodyImplCopyWith<$Res> {
  __$$GetPaymentDataBodyImplCopyWithImpl(_$GetPaymentDataBodyImpl _value,
      $Res Function(_$GetPaymentDataBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetPaymentDataBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userToken = null,
    Object? qualificationId = null,
  }) {
    return _then(_$GetPaymentDataBodyImpl(
      userToken: null == userToken
          ? _value.userToken
          : userToken // ignore: cast_nullable_to_non_nullable
              as String,
      qualificationId: null == qualificationId
          ? _value.qualificationId
          : qualificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPaymentDataBodyImpl implements _GetPaymentDataBody {
  const _$GetPaymentDataBodyImpl(
      {required this.userToken, required this.qualificationId});

  factory _$GetPaymentDataBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPaymentDataBodyImplFromJson(json);

  @override
  final String userToken;
  @override
  final String qualificationId;

  @override
  String toString() {
    return 'GetPaymentDataBody(userToken: $userToken, qualificationId: $qualificationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymentDataBodyImpl &&
            (identical(other.userToken, userToken) ||
                other.userToken == userToken) &&
            (identical(other.qualificationId, qualificationId) ||
                other.qualificationId == qualificationId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userToken, qualificationId);

  /// Create a copy of GetPaymentDataBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPaymentDataBodyImplCopyWith<_$GetPaymentDataBodyImpl> get copyWith =>
      __$$GetPaymentDataBodyImplCopyWithImpl<_$GetPaymentDataBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPaymentDataBodyImplToJson(
      this,
    );
  }
}

abstract class _GetPaymentDataBody implements GetPaymentDataBody {
  const factory _GetPaymentDataBody(
      {required final String userToken,
      required final String qualificationId}) = _$GetPaymentDataBodyImpl;

  factory _GetPaymentDataBody.fromJson(Map<String, dynamic> json) =
      _$GetPaymentDataBodyImpl.fromJson;

  @override
  String get userToken;
  @override
  String get qualificationId;

  /// Create a copy of GetPaymentDataBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPaymentDataBodyImplCopyWith<_$GetPaymentDataBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
