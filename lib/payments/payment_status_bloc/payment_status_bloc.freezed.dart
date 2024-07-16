// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_status_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentStatusEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Requested value) requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Requested value)? requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Requested value)? requested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStatusEventCopyWith<$Res> {
  factory $PaymentStatusEventCopyWith(
          PaymentStatusEvent value, $Res Function(PaymentStatusEvent) then) =
      _$PaymentStatusEventCopyWithImpl<$Res, PaymentStatusEvent>;
}

/// @nodoc
class _$PaymentStatusEventCopyWithImpl<$Res, $Val extends PaymentStatusEvent>
    implements $PaymentStatusEventCopyWith<$Res> {
  _$PaymentStatusEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RequestedImplCopyWith<$Res> {
  factory _$$RequestedImplCopyWith(
          _$RequestedImpl value, $Res Function(_$RequestedImpl) then) =
      __$$RequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestedImplCopyWithImpl<$Res>
    extends _$PaymentStatusEventCopyWithImpl<$Res, _$RequestedImpl>
    implements _$$RequestedImplCopyWith<$Res> {
  __$$RequestedImplCopyWithImpl(
      _$RequestedImpl _value, $Res Function(_$RequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestedImpl implements _Requested {
  const _$RequestedImpl();

  @override
  String toString() {
    return 'PaymentStatusEvent.requested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requested,
  }) {
    return requested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requested,
  }) {
    return requested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requested,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Requested value) requested,
  }) {
    return requested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Requested value)? requested,
  }) {
    return requested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Requested value)? requested,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(this);
    }
    return orElse();
  }
}

abstract class _Requested implements PaymentStatusEvent {
  const factory _Requested() = _$RequestedImpl;
}

/// @nodoc
mixin _$PaymentStatusState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration time) waiting,
    required TResult Function() paid,
    required TResult Function() cancelled,
    required TResult Function() noCurrentPayment,
    required TResult Function() timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration time)? waiting,
    TResult? Function()? paid,
    TResult? Function()? cancelled,
    TResult? Function()? noCurrentPayment,
    TResult? Function()? timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration time)? waiting,
    TResult Function()? paid,
    TResult Function()? cancelled,
    TResult Function()? noCurrentPayment,
    TResult Function()? timeOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_Paid value) paid,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_NoCurrentPayment value) noCurrentPayment,
    required TResult Function(_TimeOut value) timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_Paid value)? paid,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_NoCurrentPayment value)? noCurrentPayment,
    TResult? Function(_TimeOut value)? timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Paid value)? paid,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_NoCurrentPayment value)? noCurrentPayment,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStatusStateCopyWith<$Res> {
  factory $PaymentStatusStateCopyWith(
          PaymentStatusState value, $Res Function(PaymentStatusState) then) =
      _$PaymentStatusStateCopyWithImpl<$Res, PaymentStatusState>;
}

/// @nodoc
class _$PaymentStatusStateCopyWithImpl<$Res, $Val extends PaymentStatusState>
    implements $PaymentStatusStateCopyWith<$Res> {
  _$PaymentStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WaitingImplCopyWith<$Res> {
  factory _$$WaitingImplCopyWith(
          _$WaitingImpl value, $Res Function(_$WaitingImpl) then) =
      __$$WaitingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration time});
}

/// @nodoc
class __$$WaitingImplCopyWithImpl<$Res>
    extends _$PaymentStatusStateCopyWithImpl<$Res, _$WaitingImpl>
    implements _$$WaitingImplCopyWith<$Res> {
  __$$WaitingImplCopyWithImpl(
      _$WaitingImpl _value, $Res Function(_$WaitingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_$WaitingImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$WaitingImpl implements _Waiting {
  const _$WaitingImpl({required this.time});

  @override
  final Duration time;

  @override
  String toString() {
    return 'PaymentStatusState.waiting(time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaitingImpl &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WaitingImplCopyWith<_$WaitingImpl> get copyWith =>
      __$$WaitingImplCopyWithImpl<_$WaitingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration time) waiting,
    required TResult Function() paid,
    required TResult Function() cancelled,
    required TResult Function() noCurrentPayment,
    required TResult Function() timeOut,
  }) {
    return waiting(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration time)? waiting,
    TResult? Function()? paid,
    TResult? Function()? cancelled,
    TResult? Function()? noCurrentPayment,
    TResult? Function()? timeOut,
  }) {
    return waiting?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration time)? waiting,
    TResult Function()? paid,
    TResult Function()? cancelled,
    TResult Function()? noCurrentPayment,
    TResult Function()? timeOut,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_Paid value) paid,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_NoCurrentPayment value) noCurrentPayment,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_Paid value)? paid,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_NoCurrentPayment value)? noCurrentPayment,
    TResult? Function(_TimeOut value)? timeOut,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Paid value)? paid,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_NoCurrentPayment value)? noCurrentPayment,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class _Waiting implements PaymentStatusState {
  const factory _Waiting({required final Duration time}) = _$WaitingImpl;

  Duration get time;
  @JsonKey(ignore: true)
  _$$WaitingImplCopyWith<_$WaitingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaidImplCopyWith<$Res> {
  factory _$$PaidImplCopyWith(
          _$PaidImpl value, $Res Function(_$PaidImpl) then) =
      __$$PaidImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaidImplCopyWithImpl<$Res>
    extends _$PaymentStatusStateCopyWithImpl<$Res, _$PaidImpl>
    implements _$$PaidImplCopyWith<$Res> {
  __$$PaidImplCopyWithImpl(_$PaidImpl _value, $Res Function(_$PaidImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaidImpl implements _Paid {
  const _$PaidImpl();

  @override
  String toString() {
    return 'PaymentStatusState.paid()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaidImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration time) waiting,
    required TResult Function() paid,
    required TResult Function() cancelled,
    required TResult Function() noCurrentPayment,
    required TResult Function() timeOut,
  }) {
    return paid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration time)? waiting,
    TResult? Function()? paid,
    TResult? Function()? cancelled,
    TResult? Function()? noCurrentPayment,
    TResult? Function()? timeOut,
  }) {
    return paid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration time)? waiting,
    TResult Function()? paid,
    TResult Function()? cancelled,
    TResult Function()? noCurrentPayment,
    TResult Function()? timeOut,
    required TResult orElse(),
  }) {
    if (paid != null) {
      return paid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_Paid value) paid,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_NoCurrentPayment value) noCurrentPayment,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return paid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_Paid value)? paid,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_NoCurrentPayment value)? noCurrentPayment,
    TResult? Function(_TimeOut value)? timeOut,
  }) {
    return paid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Paid value)? paid,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_NoCurrentPayment value)? noCurrentPayment,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (paid != null) {
      return paid(this);
    }
    return orElse();
  }
}

abstract class _Paid implements PaymentStatusState {
  const factory _Paid() = _$PaidImpl;
}

/// @nodoc
abstract class _$$CancelledImplCopyWith<$Res> {
  factory _$$CancelledImplCopyWith(
          _$CancelledImpl value, $Res Function(_$CancelledImpl) then) =
      __$$CancelledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelledImplCopyWithImpl<$Res>
    extends _$PaymentStatusStateCopyWithImpl<$Res, _$CancelledImpl>
    implements _$$CancelledImplCopyWith<$Res> {
  __$$CancelledImplCopyWithImpl(
      _$CancelledImpl _value, $Res Function(_$CancelledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CancelledImpl implements _Cancelled {
  const _$CancelledImpl();

  @override
  String toString() {
    return 'PaymentStatusState.cancelled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration time) waiting,
    required TResult Function() paid,
    required TResult Function() cancelled,
    required TResult Function() noCurrentPayment,
    required TResult Function() timeOut,
  }) {
    return cancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration time)? waiting,
    TResult? Function()? paid,
    TResult? Function()? cancelled,
    TResult? Function()? noCurrentPayment,
    TResult? Function()? timeOut,
  }) {
    return cancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration time)? waiting,
    TResult Function()? paid,
    TResult Function()? cancelled,
    TResult Function()? noCurrentPayment,
    TResult Function()? timeOut,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_Paid value) paid,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_NoCurrentPayment value) noCurrentPayment,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_Paid value)? paid,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_NoCurrentPayment value)? noCurrentPayment,
    TResult? Function(_TimeOut value)? timeOut,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Paid value)? paid,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_NoCurrentPayment value)? noCurrentPayment,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class _Cancelled implements PaymentStatusState {
  const factory _Cancelled() = _$CancelledImpl;
}

/// @nodoc
abstract class _$$NoCurrentPaymentImplCopyWith<$Res> {
  factory _$$NoCurrentPaymentImplCopyWith(_$NoCurrentPaymentImpl value,
          $Res Function(_$NoCurrentPaymentImpl) then) =
      __$$NoCurrentPaymentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoCurrentPaymentImplCopyWithImpl<$Res>
    extends _$PaymentStatusStateCopyWithImpl<$Res, _$NoCurrentPaymentImpl>
    implements _$$NoCurrentPaymentImplCopyWith<$Res> {
  __$$NoCurrentPaymentImplCopyWithImpl(_$NoCurrentPaymentImpl _value,
      $Res Function(_$NoCurrentPaymentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoCurrentPaymentImpl implements _NoCurrentPayment {
  const _$NoCurrentPaymentImpl();

  @override
  String toString() {
    return 'PaymentStatusState.noCurrentPayment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoCurrentPaymentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration time) waiting,
    required TResult Function() paid,
    required TResult Function() cancelled,
    required TResult Function() noCurrentPayment,
    required TResult Function() timeOut,
  }) {
    return noCurrentPayment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration time)? waiting,
    TResult? Function()? paid,
    TResult? Function()? cancelled,
    TResult? Function()? noCurrentPayment,
    TResult? Function()? timeOut,
  }) {
    return noCurrentPayment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration time)? waiting,
    TResult Function()? paid,
    TResult Function()? cancelled,
    TResult Function()? noCurrentPayment,
    TResult Function()? timeOut,
    required TResult orElse(),
  }) {
    if (noCurrentPayment != null) {
      return noCurrentPayment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_Paid value) paid,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_NoCurrentPayment value) noCurrentPayment,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return noCurrentPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_Paid value)? paid,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_NoCurrentPayment value)? noCurrentPayment,
    TResult? Function(_TimeOut value)? timeOut,
  }) {
    return noCurrentPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Paid value)? paid,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_NoCurrentPayment value)? noCurrentPayment,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (noCurrentPayment != null) {
      return noCurrentPayment(this);
    }
    return orElse();
  }
}

abstract class _NoCurrentPayment implements PaymentStatusState {
  const factory _NoCurrentPayment() = _$NoCurrentPaymentImpl;
}

/// @nodoc
abstract class _$$TimeOutImplCopyWith<$Res> {
  factory _$$TimeOutImplCopyWith(
          _$TimeOutImpl value, $Res Function(_$TimeOutImpl) then) =
      __$$TimeOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimeOutImplCopyWithImpl<$Res>
    extends _$PaymentStatusStateCopyWithImpl<$Res, _$TimeOutImpl>
    implements _$$TimeOutImplCopyWith<$Res> {
  __$$TimeOutImplCopyWithImpl(
      _$TimeOutImpl _value, $Res Function(_$TimeOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimeOutImpl implements _TimeOut {
  const _$TimeOutImpl();

  @override
  String toString() {
    return 'PaymentStatusState.timeOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimeOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration time) waiting,
    required TResult Function() paid,
    required TResult Function() cancelled,
    required TResult Function() noCurrentPayment,
    required TResult Function() timeOut,
  }) {
    return timeOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration time)? waiting,
    TResult? Function()? paid,
    TResult? Function()? cancelled,
    TResult? Function()? noCurrentPayment,
    TResult? Function()? timeOut,
  }) {
    return timeOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration time)? waiting,
    TResult Function()? paid,
    TResult Function()? cancelled,
    TResult Function()? noCurrentPayment,
    TResult Function()? timeOut,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_Paid value) paid,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_NoCurrentPayment value) noCurrentPayment,
    required TResult Function(_TimeOut value) timeOut,
  }) {
    return timeOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_Paid value)? paid,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_NoCurrentPayment value)? noCurrentPayment,
    TResult? Function(_TimeOut value)? timeOut,
  }) {
    return timeOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Paid value)? paid,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_NoCurrentPayment value)? noCurrentPayment,
    TResult Function(_TimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut(this);
    }
    return orElse();
  }
}

abstract class _TimeOut implements PaymentStatusState {
  const factory _TimeOut() = _$TimeOutImpl;
}
