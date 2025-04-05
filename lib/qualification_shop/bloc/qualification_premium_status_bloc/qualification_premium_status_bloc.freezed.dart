// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qualification_premium_status_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QualificationPremiumStatusEvent {
  String? get userId => throw _privateConstructorUsedError;
  Qualification get qualification => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId, Qualification qualification)
        requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userId, Qualification qualification)? requested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId, Qualification qualification)? requested,
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

  /// Create a copy of QualificationPremiumStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QualificationPremiumStatusEventCopyWith<QualificationPremiumStatusEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QualificationPremiumStatusEventCopyWith<$Res> {
  factory $QualificationPremiumStatusEventCopyWith(
          QualificationPremiumStatusEvent value,
          $Res Function(QualificationPremiumStatusEvent) then) =
      _$QualificationPremiumStatusEventCopyWithImpl<$Res,
          QualificationPremiumStatusEvent>;
  @useResult
  $Res call({String? userId, Qualification qualification});

  $QualificationCopyWith<$Res> get qualification;
}

/// @nodoc
class _$QualificationPremiumStatusEventCopyWithImpl<$Res,
        $Val extends QualificationPremiumStatusEvent>
    implements $QualificationPremiumStatusEventCopyWith<$Res> {
  _$QualificationPremiumStatusEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QualificationPremiumStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? qualification = null,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      qualification: null == qualification
          ? _value.qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as Qualification,
    ) as $Val);
  }

  /// Create a copy of QualificationPremiumStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QualificationCopyWith<$Res> get qualification {
    return $QualificationCopyWith<$Res>(_value.qualification, (value) {
      return _then(_value.copyWith(qualification: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RequestedImplCopyWith<$Res>
    implements $QualificationPremiumStatusEventCopyWith<$Res> {
  factory _$$RequestedImplCopyWith(
          _$RequestedImpl value, $Res Function(_$RequestedImpl) then) =
      __$$RequestedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userId, Qualification qualification});

  @override
  $QualificationCopyWith<$Res> get qualification;
}

/// @nodoc
class __$$RequestedImplCopyWithImpl<$Res>
    extends _$QualificationPremiumStatusEventCopyWithImpl<$Res, _$RequestedImpl>
    implements _$$RequestedImplCopyWith<$Res> {
  __$$RequestedImplCopyWithImpl(
      _$RequestedImpl _value, $Res Function(_$RequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of QualificationPremiumStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? qualification = null,
  }) {
    return _then(_$RequestedImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      qualification: null == qualification
          ? _value.qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as Qualification,
    ));
  }
}

/// @nodoc

class _$RequestedImpl implements _Requested {
  const _$RequestedImpl({required this.userId, required this.qualification});

  @override
  final String? userId;
  @override
  final Qualification qualification;

  @override
  String toString() {
    return 'QualificationPremiumStatusEvent.requested(userId: $userId, qualification: $qualification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestedImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.qualification, qualification) ||
                other.qualification == qualification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, qualification);

  /// Create a copy of QualificationPremiumStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestedImplCopyWith<_$RequestedImpl> get copyWith =>
      __$$RequestedImplCopyWithImpl<_$RequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId, Qualification qualification)
        requested,
  }) {
    return requested(userId, qualification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userId, Qualification qualification)? requested,
  }) {
    return requested?.call(userId, qualification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId, Qualification qualification)? requested,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(userId, qualification);
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

abstract class _Requested implements QualificationPremiumStatusEvent {
  const factory _Requested(
      {required final String? userId,
      required final Qualification qualification}) = _$RequestedImpl;

  @override
  String? get userId;
  @override
  Qualification get qualification;

  /// Create a copy of QualificationPremiumStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestedImplCopyWith<_$RequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QualificationPremiumStatusState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Qualification qualification) loading,
    required TResult Function(Qualification qualification, bool isPurchased)
        success,
    required TResult Function(Qualification qualification, String message)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Qualification qualification)? loading,
    TResult? Function(Qualification qualification, bool isPurchased)? success,
    TResult? Function(Qualification qualification, String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Qualification qualification)? loading,
    TResult Function(Qualification qualification, bool isPurchased)? success,
    TResult Function(Qualification qualification, String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QualificationPremiumStatusStateCopyWith<$Res> {
  factory $QualificationPremiumStatusStateCopyWith(
          QualificationPremiumStatusState value,
          $Res Function(QualificationPremiumStatusState) then) =
      _$QualificationPremiumStatusStateCopyWithImpl<$Res,
          QualificationPremiumStatusState>;
}

/// @nodoc
class _$QualificationPremiumStatusStateCopyWithImpl<$Res,
        $Val extends QualificationPremiumStatusState>
    implements $QualificationPremiumStatusStateCopyWith<$Res> {
  _$QualificationPremiumStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QualificationPremiumStatusState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$QualificationPremiumStatusStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of QualificationPremiumStatusState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'QualificationPremiumStatusState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Qualification qualification) loading,
    required TResult Function(Qualification qualification, bool isPurchased)
        success,
    required TResult Function(Qualification qualification, String message)
        failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Qualification qualification)? loading,
    TResult? Function(Qualification qualification, bool isPurchased)? success,
    TResult? Function(Qualification qualification, String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Qualification qualification)? loading,
    TResult Function(Qualification qualification, bool isPurchased)? success,
    TResult Function(Qualification qualification, String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QualificationPremiumStatusState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Qualification qualification});

  $QualificationCopyWith<$Res> get qualification;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$QualificationPremiumStatusStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of QualificationPremiumStatusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qualification = null,
  }) {
    return _then(_$LoadingImpl(
      qualification: null == qualification
          ? _value.qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as Qualification,
    ));
  }

  /// Create a copy of QualificationPremiumStatusState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QualificationCopyWith<$Res> get qualification {
    return $QualificationCopyWith<$Res>(_value.qualification, (value) {
      return _then(_value.copyWith(qualification: value));
    });
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl({required this.qualification});

  @override
  final Qualification qualification;

  @override
  String toString() {
    return 'QualificationPremiumStatusState.loading(qualification: $qualification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.qualification, qualification) ||
                other.qualification == qualification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, qualification);

  /// Create a copy of QualificationPremiumStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Qualification qualification) loading,
    required TResult Function(Qualification qualification, bool isPurchased)
        success,
    required TResult Function(Qualification qualification, String message)
        failure,
  }) {
    return loading(qualification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Qualification qualification)? loading,
    TResult? Function(Qualification qualification, bool isPurchased)? success,
    TResult? Function(Qualification qualification, String message)? failure,
  }) {
    return loading?.call(qualification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Qualification qualification)? loading,
    TResult Function(Qualification qualification, bool isPurchased)? success,
    TResult Function(Qualification qualification, String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(qualification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements QualificationPremiumStatusState {
  const factory _Loading({required final Qualification qualification}) =
      _$LoadingImpl;

  Qualification get qualification;

  /// Create a copy of QualificationPremiumStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Qualification qualification, bool isPurchased});

  $QualificationCopyWith<$Res> get qualification;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$QualificationPremiumStatusStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of QualificationPremiumStatusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qualification = null,
    Object? isPurchased = null,
  }) {
    return _then(_$SuccessImpl(
      qualification: null == qualification
          ? _value.qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as Qualification,
      isPurchased: null == isPurchased
          ? _value.isPurchased
          : isPurchased // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of QualificationPremiumStatusState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QualificationCopyWith<$Res> get qualification {
    return $QualificationCopyWith<$Res>(_value.qualification, (value) {
      return _then(_value.copyWith(qualification: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({required this.qualification, required this.isPurchased});

  @override
  final Qualification qualification;
  @override
  final bool isPurchased;

  @override
  String toString() {
    return 'QualificationPremiumStatusState.success(qualification: $qualification, isPurchased: $isPurchased)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.qualification, qualification) ||
                other.qualification == qualification) &&
            (identical(other.isPurchased, isPurchased) ||
                other.isPurchased == isPurchased));
  }

  @override
  int get hashCode => Object.hash(runtimeType, qualification, isPurchased);

  /// Create a copy of QualificationPremiumStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Qualification qualification) loading,
    required TResult Function(Qualification qualification, bool isPurchased)
        success,
    required TResult Function(Qualification qualification, String message)
        failure,
  }) {
    return success(qualification, isPurchased);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Qualification qualification)? loading,
    TResult? Function(Qualification qualification, bool isPurchased)? success,
    TResult? Function(Qualification qualification, String message)? failure,
  }) {
    return success?.call(qualification, isPurchased);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Qualification qualification)? loading,
    TResult Function(Qualification qualification, bool isPurchased)? success,
    TResult Function(Qualification qualification, String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(qualification, isPurchased);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements QualificationPremiumStatusState {
  const factory _Success(
      {required final Qualification qualification,
      required final bool isPurchased}) = _$SuccessImpl;

  Qualification get qualification;
  bool get isPurchased;

  /// Create a copy of QualificationPremiumStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Qualification qualification, String message});

  $QualificationCopyWith<$Res> get qualification;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$QualificationPremiumStatusStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of QualificationPremiumStatusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qualification = null,
    Object? message = null,
  }) {
    return _then(_$FailureImpl(
      qualification: null == qualification
          ? _value.qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as Qualification,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of QualificationPremiumStatusState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QualificationCopyWith<$Res> get qualification {
    return $QualificationCopyWith<$Res>(_value.qualification, (value) {
      return _then(_value.copyWith(qualification: value));
    });
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({required this.qualification, required this.message});

  @override
  final Qualification qualification;
  @override
  final String message;

  @override
  String toString() {
    return 'QualificationPremiumStatusState.failure(qualification: $qualification, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.qualification, qualification) ||
                other.qualification == qualification) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, qualification, message);

  /// Create a copy of QualificationPremiumStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Qualification qualification) loading,
    required TResult Function(Qualification qualification, bool isPurchased)
        success,
    required TResult Function(Qualification qualification, String message)
        failure,
  }) {
    return failure(qualification, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Qualification qualification)? loading,
    TResult? Function(Qualification qualification, bool isPurchased)? success,
    TResult? Function(Qualification qualification, String message)? failure,
  }) {
    return failure?.call(qualification, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Qualification qualification)? loading,
    TResult Function(Qualification qualification, bool isPurchased)? success,
    TResult Function(Qualification qualification, String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(qualification, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements QualificationPremiumStatusState {
  const factory _Failure(
      {required final Qualification qualification,
      required final String message}) = _$FailureImpl;

  Qualification get qualification;
  String get message;

  /// Create a copy of QualificationPremiumStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
