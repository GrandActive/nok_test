// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_status_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderStatusApiResponse _$OrderStatusApiResponseFromJson(
    Map<String, dynamic> json) {
  return _OrderStatusApiResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderStatusApiResponse {
  OrderStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderStatusApiResponseCopyWith<OrderStatusApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatusApiResponseCopyWith<$Res> {
  factory $OrderStatusApiResponseCopyWith(OrderStatusApiResponse value,
          $Res Function(OrderStatusApiResponse) then) =
      _$OrderStatusApiResponseCopyWithImpl<$Res, OrderStatusApiResponse>;
  @useResult
  $Res call({OrderStatus status});
}

/// @nodoc
class _$OrderStatusApiResponseCopyWithImpl<$Res,
        $Val extends OrderStatusApiResponse>
    implements $OrderStatusApiResponseCopyWith<$Res> {
  _$OrderStatusApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderStatusApiResponseImplCopyWith<$Res>
    implements $OrderStatusApiResponseCopyWith<$Res> {
  factory _$$OrderStatusApiResponseImplCopyWith(
          _$OrderStatusApiResponseImpl value,
          $Res Function(_$OrderStatusApiResponseImpl) then) =
      __$$OrderStatusApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderStatus status});
}

/// @nodoc
class __$$OrderStatusApiResponseImplCopyWithImpl<$Res>
    extends _$OrderStatusApiResponseCopyWithImpl<$Res,
        _$OrderStatusApiResponseImpl>
    implements _$$OrderStatusApiResponseImplCopyWith<$Res> {
  __$$OrderStatusApiResponseImplCopyWithImpl(
      _$OrderStatusApiResponseImpl _value,
      $Res Function(_$OrderStatusApiResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$OrderStatusApiResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderStatusApiResponseImpl implements _OrderStatusApiResponse {
  const _$OrderStatusApiResponseImpl({required this.status});

  factory _$OrderStatusApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderStatusApiResponseImplFromJson(json);

  @override
  final OrderStatus status;

  @override
  String toString() {
    return 'OrderStatusApiResponse(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStatusApiResponseImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStatusApiResponseImplCopyWith<_$OrderStatusApiResponseImpl>
      get copyWith => __$$OrderStatusApiResponseImplCopyWithImpl<
          _$OrderStatusApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderStatusApiResponseImplToJson(
      this,
    );
  }
}

abstract class _OrderStatusApiResponse implements OrderStatusApiResponse {
  const factory _OrderStatusApiResponse({required final OrderStatus status}) =
      _$OrderStatusApiResponseImpl;

  factory _OrderStatusApiResponse.fromJson(Map<String, dynamic> json) =
      _$OrderStatusApiResponseImpl.fromJson;

  @override
  OrderStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$OrderStatusApiResponseImplCopyWith<_$OrderStatusApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
