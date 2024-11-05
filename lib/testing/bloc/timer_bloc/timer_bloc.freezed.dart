// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) started,
    required TResult Function() stopped,
    required TResult Function(int secondsLeft) ticked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? started,
    TResult? Function()? stopped,
    TResult? Function(int secondsLeft)? ticked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? started,
    TResult Function()? stopped,
    TResult Function(int secondsLeft)? ticked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StoppedEvent value) stopped,
    required TResult Function(_Ticked value) ticked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StoppedEvent value)? stopped,
    TResult? Function(_Ticked value)? ticked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StoppedEvent value)? stopped,
    TResult Function(_Ticked value)? ticked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerEventCopyWith<$Res> {
  factory $TimerEventCopyWith(
          TimerEvent value, $Res Function(TimerEvent) then) =
      _$TimerEventCopyWithImpl<$Res, TimerEvent>;
}

/// @nodoc
class _$TimerEventCopyWithImpl<$Res, $Val extends TimerEvent>
    implements $TimerEventCopyWith<$Res> {
  _$TimerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$StartedImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl({required this.duration});

  @override
  final Duration duration;

  @override
  String toString() {
    return 'TimerEvent.started(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) started,
    required TResult Function() stopped,
    required TResult Function(int secondsLeft) ticked,
  }) {
    return started(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? started,
    TResult? Function()? stopped,
    TResult? Function(int secondsLeft)? ticked,
  }) {
    return started?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? started,
    TResult Function()? stopped,
    TResult Function(int secondsLeft)? ticked,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StoppedEvent value) stopped,
    required TResult Function(_Ticked value) ticked,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StoppedEvent value)? stopped,
    TResult? Function(_Ticked value)? ticked,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StoppedEvent value)? stopped,
    TResult Function(_Ticked value)? ticked,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TimerEvent {
  const factory _Started({required final Duration duration}) = _$StartedImpl;

  Duration get duration;

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoppedEventImplCopyWith<$Res> {
  factory _$$StoppedEventImplCopyWith(
          _$StoppedEventImpl value, $Res Function(_$StoppedEventImpl) then) =
      __$$StoppedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoppedEventImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$StoppedEventImpl>
    implements _$$StoppedEventImplCopyWith<$Res> {
  __$$StoppedEventImplCopyWithImpl(
      _$StoppedEventImpl _value, $Res Function(_$StoppedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StoppedEventImpl implements _StoppedEvent {
  const _$StoppedEventImpl();

  @override
  String toString() {
    return 'TimerEvent.stopped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StoppedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) started,
    required TResult Function() stopped,
    required TResult Function(int secondsLeft) ticked,
  }) {
    return stopped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? started,
    TResult? Function()? stopped,
    TResult? Function(int secondsLeft)? ticked,
  }) {
    return stopped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? started,
    TResult Function()? stopped,
    TResult Function(int secondsLeft)? ticked,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StoppedEvent value) stopped,
    required TResult Function(_Ticked value) ticked,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StoppedEvent value)? stopped,
    TResult? Function(_Ticked value)? ticked,
  }) {
    return stopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StoppedEvent value)? stopped,
    TResult Function(_Ticked value)? ticked,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(this);
    }
    return orElse();
  }
}

abstract class _StoppedEvent implements TimerEvent {
  const factory _StoppedEvent() = _$StoppedEventImpl;
}

/// @nodoc
abstract class _$$TickedImplCopyWith<$Res> {
  factory _$$TickedImplCopyWith(
          _$TickedImpl value, $Res Function(_$TickedImpl) then) =
      __$$TickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int secondsLeft});
}

/// @nodoc
class __$$TickedImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$TickedImpl>
    implements _$$TickedImplCopyWith<$Res> {
  __$$TickedImplCopyWithImpl(
      _$TickedImpl _value, $Res Function(_$TickedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? secondsLeft = null,
  }) {
    return _then(_$TickedImpl(
      secondsLeft: null == secondsLeft
          ? _value.secondsLeft
          : secondsLeft // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TickedImpl implements _Ticked {
  const _$TickedImpl({required this.secondsLeft});

  @override
  final int secondsLeft;

  @override
  String toString() {
    return 'TimerEvent.ticked(secondsLeft: $secondsLeft)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TickedImpl &&
            (identical(other.secondsLeft, secondsLeft) ||
                other.secondsLeft == secondsLeft));
  }

  @override
  int get hashCode => Object.hash(runtimeType, secondsLeft);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TickedImplCopyWith<_$TickedImpl> get copyWith =>
      __$$TickedImplCopyWithImpl<_$TickedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) started,
    required TResult Function() stopped,
    required TResult Function(int secondsLeft) ticked,
  }) {
    return ticked(secondsLeft);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? started,
    TResult? Function()? stopped,
    TResult? Function(int secondsLeft)? ticked,
  }) {
    return ticked?.call(secondsLeft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? started,
    TResult Function()? stopped,
    TResult Function(int secondsLeft)? ticked,
    required TResult orElse(),
  }) {
    if (ticked != null) {
      return ticked(secondsLeft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StoppedEvent value) stopped,
    required TResult Function(_Ticked value) ticked,
  }) {
    return ticked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StoppedEvent value)? stopped,
    TResult? Function(_Ticked value)? ticked,
  }) {
    return ticked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StoppedEvent value)? stopped,
    TResult Function(_Ticked value)? ticked,
    required TResult orElse(),
  }) {
    if (ticked != null) {
      return ticked(this);
    }
    return orElse();
  }
}

abstract class _Ticked implements TimerEvent {
  const factory _Ticked({required final int secondsLeft}) = _$TickedImpl;

  int get secondsLeft;

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TickedImplCopyWith<_$TickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Duration timeLeft) running,
    required TResult Function(Duration timeLeft) stopped,
    required TResult Function() finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Duration timeLeft)? running,
    TResult? Function(Duration timeLeft)? stopped,
    TResult? Function()? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration timeLeft)? running,
    TResult Function(Duration timeLeft)? stopped,
    TResult Function()? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Running value) running,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Finished value) finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Running value)? running,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Finished value)? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Running value)? running,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res, TimerState>;
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res, $Val extends TimerState>
    implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimerState
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
    extends _$TimerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TimerState.initial()';
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
    required TResult Function(Duration timeLeft) running,
    required TResult Function(Duration timeLeft) stopped,
    required TResult Function() finished,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Duration timeLeft)? running,
    TResult? Function(Duration timeLeft)? stopped,
    TResult? Function()? finished,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration timeLeft)? running,
    TResult Function(Duration timeLeft)? stopped,
    TResult Function()? finished,
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
    required TResult Function(Running value) running,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Finished value) finished,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Running value)? running,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Finished value)? finished,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Running value)? running,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TimerState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$RunningImplCopyWith<$Res> {
  factory _$$RunningImplCopyWith(
          _$RunningImpl value, $Res Function(_$RunningImpl) then) =
      __$$RunningImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration timeLeft});
}

/// @nodoc
class __$$RunningImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$RunningImpl>
    implements _$$RunningImplCopyWith<$Res> {
  __$$RunningImplCopyWithImpl(
      _$RunningImpl _value, $Res Function(_$RunningImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeLeft = null,
  }) {
    return _then(_$RunningImpl(
      timeLeft: null == timeLeft
          ? _value.timeLeft
          : timeLeft // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$RunningImpl implements Running {
  const _$RunningImpl({required this.timeLeft});

  @override
  final Duration timeLeft;

  @override
  String toString() {
    return 'TimerState.running(timeLeft: $timeLeft)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RunningImpl &&
            (identical(other.timeLeft, timeLeft) ||
                other.timeLeft == timeLeft));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeLeft);

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RunningImplCopyWith<_$RunningImpl> get copyWith =>
      __$$RunningImplCopyWithImpl<_$RunningImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Duration timeLeft) running,
    required TResult Function(Duration timeLeft) stopped,
    required TResult Function() finished,
  }) {
    return running(timeLeft);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Duration timeLeft)? running,
    TResult? Function(Duration timeLeft)? stopped,
    TResult? Function()? finished,
  }) {
    return running?.call(timeLeft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration timeLeft)? running,
    TResult Function(Duration timeLeft)? stopped,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(timeLeft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Running value) running,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Finished value) finished,
  }) {
    return running(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Running value)? running,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Finished value)? finished,
  }) {
    return running?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Running value)? running,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(this);
    }
    return orElse();
  }
}

abstract class Running implements TimerState {
  const factory Running({required final Duration timeLeft}) = _$RunningImpl;

  Duration get timeLeft;

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RunningImplCopyWith<_$RunningImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoppedImplCopyWith<$Res> {
  factory _$$StoppedImplCopyWith(
          _$StoppedImpl value, $Res Function(_$StoppedImpl) then) =
      __$$StoppedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration timeLeft});
}

/// @nodoc
class __$$StoppedImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$StoppedImpl>
    implements _$$StoppedImplCopyWith<$Res> {
  __$$StoppedImplCopyWithImpl(
      _$StoppedImpl _value, $Res Function(_$StoppedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeLeft = null,
  }) {
    return _then(_$StoppedImpl(
      timeLeft: null == timeLeft
          ? _value.timeLeft
          : timeLeft // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$StoppedImpl implements _Stopped {
  const _$StoppedImpl({required this.timeLeft});

  @override
  final Duration timeLeft;

  @override
  String toString() {
    return 'TimerState.stopped(timeLeft: $timeLeft)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoppedImpl &&
            (identical(other.timeLeft, timeLeft) ||
                other.timeLeft == timeLeft));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeLeft);

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoppedImplCopyWith<_$StoppedImpl> get copyWith =>
      __$$StoppedImplCopyWithImpl<_$StoppedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Duration timeLeft) running,
    required TResult Function(Duration timeLeft) stopped,
    required TResult Function() finished,
  }) {
    return stopped(timeLeft);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Duration timeLeft)? running,
    TResult? Function(Duration timeLeft)? stopped,
    TResult? Function()? finished,
  }) {
    return stopped?.call(timeLeft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration timeLeft)? running,
    TResult Function(Duration timeLeft)? stopped,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(timeLeft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Running value) running,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Finished value) finished,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Running value)? running,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Finished value)? finished,
  }) {
    return stopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Running value)? running,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(this);
    }
    return orElse();
  }
}

abstract class _Stopped implements TimerState {
  const factory _Stopped({required final Duration timeLeft}) = _$StoppedImpl;

  Duration get timeLeft;

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoppedImplCopyWith<_$StoppedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinishedImplCopyWith<$Res> {
  factory _$$FinishedImplCopyWith(
          _$FinishedImpl value, $Res Function(_$FinishedImpl) then) =
      __$$FinishedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FinishedImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$FinishedImpl>
    implements _$$FinishedImplCopyWith<$Res> {
  __$$FinishedImplCopyWithImpl(
      _$FinishedImpl _value, $Res Function(_$FinishedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FinishedImpl implements _Finished {
  const _$FinishedImpl();

  @override
  String toString() {
    return 'TimerState.finished()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FinishedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Duration timeLeft) running,
    required TResult Function(Duration timeLeft) stopped,
    required TResult Function() finished,
  }) {
    return finished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Duration timeLeft)? running,
    TResult? Function(Duration timeLeft)? stopped,
    TResult? Function()? finished,
  }) {
    return finished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Duration timeLeft)? running,
    TResult Function(Duration timeLeft)? stopped,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Running value) running,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Finished value) finished,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Running value)? running,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Finished value)? finished,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Running value)? running,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class _Finished implements TimerState {
  const factory _Finished() = _$FinishedImpl;
}
