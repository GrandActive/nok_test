// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentData _$PaymentDataFromJson(Map<String, dynamic> json) {
  return _PaymentData.fromJson(json);
}

/// @nodoc
mixin _$PaymentData {
  bool get alreadyPaid => throw _privateConstructorUsedError;
  String get publicId => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  String get formUrl => throw _privateConstructorUsedError;

  /// Serializes this PaymentData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentDataCopyWith<PaymentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDataCopyWith<$Res> {
  factory $PaymentDataCopyWith(
          PaymentData value, $Res Function(PaymentData) then) =
      _$PaymentDataCopyWithImpl<$Res, PaymentData>;
  @useResult
  $Res call(
      {bool alreadyPaid,
      String publicId,
      double amount,
      String orderId,
      String formUrl});
}

/// @nodoc
class _$PaymentDataCopyWithImpl<$Res, $Val extends PaymentData>
    implements $PaymentDataCopyWith<$Res> {
  _$PaymentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alreadyPaid = null,
    Object? publicId = null,
    Object? amount = null,
    Object? orderId = null,
    Object? formUrl = null,
  }) {
    return _then(_value.copyWith(
      alreadyPaid: null == alreadyPaid
          ? _value.alreadyPaid
          : alreadyPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      publicId: null == publicId
          ? _value.publicId
          : publicId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      formUrl: null == formUrl
          ? _value.formUrl
          : formUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentDataImplCopyWith<$Res>
    implements $PaymentDataCopyWith<$Res> {
  factory _$$PaymentDataImplCopyWith(
          _$PaymentDataImpl value, $Res Function(_$PaymentDataImpl) then) =
      __$$PaymentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool alreadyPaid,
      String publicId,
      double amount,
      String orderId,
      String formUrl});
}

/// @nodoc
class __$$PaymentDataImplCopyWithImpl<$Res>
    extends _$PaymentDataCopyWithImpl<$Res, _$PaymentDataImpl>
    implements _$$PaymentDataImplCopyWith<$Res> {
  __$$PaymentDataImplCopyWithImpl(
      _$PaymentDataImpl _value, $Res Function(_$PaymentDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alreadyPaid = null,
    Object? publicId = null,
    Object? amount = null,
    Object? orderId = null,
    Object? formUrl = null,
  }) {
    return _then(_$PaymentDataImpl(
      alreadyPaid: null == alreadyPaid
          ? _value.alreadyPaid
          : alreadyPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      publicId: null == publicId
          ? _value.publicId
          : publicId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      formUrl: null == formUrl
          ? _value.formUrl
          : formUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentDataImpl implements _PaymentData {
  const _$PaymentDataImpl(
      {required this.alreadyPaid,
      required this.publicId,
      required this.amount,
      required this.orderId,
      required this.formUrl});

  factory _$PaymentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentDataImplFromJson(json);

  @override
  final bool alreadyPaid;
  @override
  final String publicId;
  @override
  final double amount;
  @override
  final String orderId;
  @override
  final String formUrl;

  @override
  String toString() {
    return 'PaymentData(alreadyPaid: $alreadyPaid, publicId: $publicId, amount: $amount, orderId: $orderId, formUrl: $formUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentDataImpl &&
            (identical(other.alreadyPaid, alreadyPaid) ||
                other.alreadyPaid == alreadyPaid) &&
            (identical(other.publicId, publicId) ||
                other.publicId == publicId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.formUrl, formUrl) || other.formUrl == formUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, alreadyPaid, publicId, amount, orderId, formUrl);

  /// Create a copy of PaymentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentDataImplCopyWith<_$PaymentDataImpl> get copyWith =>
      __$$PaymentDataImplCopyWithImpl<_$PaymentDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentDataImplToJson(
      this,
    );
  }
}

abstract class _PaymentData implements PaymentData {
  const factory _PaymentData(
      {required final bool alreadyPaid,
      required final String publicId,
      required final double amount,
      required final String orderId,
      required final String formUrl}) = _$PaymentDataImpl;

  factory _PaymentData.fromJson(Map<String, dynamic> json) =
      _$PaymentDataImpl.fromJson;

  @override
  bool get alreadyPaid;
  @override
  String get publicId;
  @override
  double get amount;
  @override
  String get orderId;
  @override
  String get formUrl;

  /// Create a copy of PaymentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentDataImplCopyWith<_$PaymentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
