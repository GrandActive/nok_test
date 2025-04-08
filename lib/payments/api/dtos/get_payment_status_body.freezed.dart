// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_payment_status_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetPaymentStatusBody _$GetPaymentStatusBodyFromJson(Map<String, dynamic> json) {
  return _GetPaymentStatusBody.fromJson(json);
}

/// @nodoc
mixin _$GetPaymentStatusBody {
  String get userToken => throw _privateConstructorUsedError;
  String get qualificationId => throw _privateConstructorUsedError;

  /// Serializes this GetPaymentStatusBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetPaymentStatusBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetPaymentStatusBodyCopyWith<GetPaymentStatusBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPaymentStatusBodyCopyWith<$Res> {
  factory $GetPaymentStatusBodyCopyWith(GetPaymentStatusBody value,
          $Res Function(GetPaymentStatusBody) then) =
      _$GetPaymentStatusBodyCopyWithImpl<$Res, GetPaymentStatusBody>;
  @useResult
  $Res call({String userToken, String qualificationId});
}

/// @nodoc
class _$GetPaymentStatusBodyCopyWithImpl<$Res,
        $Val extends GetPaymentStatusBody>
    implements $GetPaymentStatusBodyCopyWith<$Res> {
  _$GetPaymentStatusBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetPaymentStatusBody
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
abstract class _$$GetPaymentStatusBodyImplCopyWith<$Res>
    implements $GetPaymentStatusBodyCopyWith<$Res> {
  factory _$$GetPaymentStatusBodyImplCopyWith(_$GetPaymentStatusBodyImpl value,
          $Res Function(_$GetPaymentStatusBodyImpl) then) =
      __$$GetPaymentStatusBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userToken, String qualificationId});
}

/// @nodoc
class __$$GetPaymentStatusBodyImplCopyWithImpl<$Res>
    extends _$GetPaymentStatusBodyCopyWithImpl<$Res, _$GetPaymentStatusBodyImpl>
    implements _$$GetPaymentStatusBodyImplCopyWith<$Res> {
  __$$GetPaymentStatusBodyImplCopyWithImpl(_$GetPaymentStatusBodyImpl _value,
      $Res Function(_$GetPaymentStatusBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetPaymentStatusBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userToken = null,
    Object? qualificationId = null,
  }) {
    return _then(_$GetPaymentStatusBodyImpl(
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
class _$GetPaymentStatusBodyImpl implements _GetPaymentStatusBody {
  const _$GetPaymentStatusBodyImpl(
      {required this.userToken, required this.qualificationId});

  factory _$GetPaymentStatusBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPaymentStatusBodyImplFromJson(json);

  @override
  final String userToken;
  @override
  final String qualificationId;

  @override
  String toString() {
    return 'GetPaymentStatusBody(userToken: $userToken, qualificationId: $qualificationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymentStatusBodyImpl &&
            (identical(other.userToken, userToken) ||
                other.userToken == userToken) &&
            (identical(other.qualificationId, qualificationId) ||
                other.qualificationId == qualificationId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userToken, qualificationId);

  /// Create a copy of GetPaymentStatusBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPaymentStatusBodyImplCopyWith<_$GetPaymentStatusBodyImpl>
      get copyWith =>
          __$$GetPaymentStatusBodyImplCopyWithImpl<_$GetPaymentStatusBodyImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPaymentStatusBodyImplToJson(
      this,
    );
  }
}

abstract class _GetPaymentStatusBody implements GetPaymentStatusBody {
  const factory _GetPaymentStatusBody(
      {required final String userToken,
      required final String qualificationId}) = _$GetPaymentStatusBodyImpl;

  factory _GetPaymentStatusBody.fromJson(Map<String, dynamic> json) =
      _$GetPaymentStatusBodyImpl.fromJson;

  @override
  String get userToken;
  @override
  String get qualificationId;

  /// Create a copy of GetPaymentStatusBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPaymentStatusBodyImplCopyWith<_$GetPaymentStatusBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
