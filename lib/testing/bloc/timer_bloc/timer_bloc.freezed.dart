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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$_Started(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.duration});

  @override
  final Duration duration;

  @override
  String toString() {
    return 'TimerEvent.started(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

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
  const factory _Started({required final Duration duration}) = _$_Started;

  Duration get duration;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StoppedEventCopyWith<$Res> {
  factory _$$_StoppedEventCopyWith(
          _$_StoppedEvent value, $Res Function(_$_StoppedEvent) then) =
      __$$_StoppedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StoppedEventCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$_StoppedEvent>
    implements _$$_StoppedEventCopyWith<$Res> {
  __$$_StoppedEventCopyWithImpl(
      _$_StoppedEvent _value, $Res Function(_$_StoppedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StoppedEvent implements _StoppedEvent {
  const _$_StoppedEvent();

  @override
  String toString() {
    return 'TimerEvent.stopped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StoppedEvent);
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
  const factory _StoppedEvent() = _$_StoppedEvent;
}

/// @nodoc
abstract class _$$_TickedCopyWith<$Res> {
  factory _$$_TickedCopyWith(_$_Ticked value, $Res Function(_$_Ticked) then) =
      __$$_TickedCopyWithImpl<$Res>;
  @useResult
  $Res call({int secondsLeft});
}

/// @nodoc
class __$$_TickedCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$_Ticked>
    implements _$$_TickedCopyWith<$Res> {
  __$$_TickedCopyWithImpl(_$_Ticked _value, $Res Function(_$_Ticked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? secondsLeft = null,
  }) {
    return _then(_$_Ticked(
      secondsLeft: null == secondsLeft
          ? _value.secondsLeft
          : secondsLeft // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Ticked implements _Ticked {
  const _$_Ticked({required this.secondsLeft});

  @override
  final int secondsLeft;

  @override
  String toString() {
    return 'TimerEvent.ticked(secondsLeft: $secondsLeft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ticked &&
            (identical(other.secondsLeft, secondsLeft) ||
                other.secondsLeft == secondsLeft));
  }

  @override
  int get hashCode => Object.hash(runtimeType, secondsLeft);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TickedCopyWith<_$_Ticked> get copyWith =>
      __$$_TickedCopyWithImpl<_$_Ticked>(this, _$identity);

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
  const factory _Ticked({required final int secondsLeft}) = _$_Ticked;

  int get secondsLeft;
  @JsonKey(ignore: true)
  _$$_TickedCopyWith<_$_Ticked> get copyWith =>
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
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TimerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
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
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$RunningCopyWith<$Res> {
  factory _$$RunningCopyWith(_$Running value, $Res Function(_$Running) then) =
      __$$RunningCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration timeLeft});
}

/// @nodoc
class __$$RunningCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$Running>
    implements _$$RunningCopyWith<$Res> {
  __$$RunningCopyWithImpl(_$Running _value, $Res Function(_$Running) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeLeft = null,
  }) {
    return _then(_$Running(
      timeLeft: null == timeLeft
          ? _value.timeLeft
          : timeLeft // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$Running implements Running {
  const _$Running({required this.timeLeft});

  @override
  final Duration timeLeft;

  @override
  String toString() {
    return 'TimerState.running(timeLeft: $timeLeft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Running &&
            (identical(other.timeLeft, timeLeft) ||
                other.timeLeft == timeLeft));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeLeft);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RunningCopyWith<_$Running> get copyWith =>
      __$$RunningCopyWithImpl<_$Running>(this, _$identity);

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
  const factory Running({required final Duration timeLeft}) = _$Running;

  Duration get timeLeft;
  @JsonKey(ignore: true)
  _$$RunningCopyWith<_$Running> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StoppedCopyWith<$Res> {
  factory _$$_StoppedCopyWith(
          _$_Stopped value, $Res Function(_$_Stopped) then) =
      __$$_StoppedCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration timeLeft});
}

/// @nodoc
class __$$_StoppedCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$_Stopped>
    implements _$$_StoppedCopyWith<$Res> {
  __$$_StoppedCopyWithImpl(_$_Stopped _value, $Res Function(_$_Stopped) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeLeft = null,
  }) {
    return _then(_$_Stopped(
      timeLeft: null == timeLeft
          ? _value.timeLeft
          : timeLeft // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_Stopped implements _Stopped {
  const _$_Stopped({required this.timeLeft});

  @override
  final Duration timeLeft;

  @override
  String toString() {
    return 'TimerState.stopped(timeLeft: $timeLeft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Stopped &&
            (identical(other.timeLeft, timeLeft) ||
                other.timeLeft == timeLeft));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeLeft);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoppedCopyWith<_$_Stopped> get copyWith =>
      __$$_StoppedCopyWithImpl<_$_Stopped>(this, _$identity);

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
  const factory _Stopped({required final Duration timeLeft}) = _$_Stopped;

  Duration get timeLeft;
  @JsonKey(ignore: true)
  _$$_StoppedCopyWith<_$_Stopped> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FinishedCopyWith<$Res> {
  factory _$$_FinishedCopyWith(
          _$_Finished value, $Res Function(_$_Finished) then) =
      __$$_FinishedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FinishedCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$_Finished>
    implements _$$_FinishedCopyWith<$Res> {
  __$$_FinishedCopyWithImpl(
      _$_Finished _value, $Res Function(_$_Finished) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Finished implements _Finished {
  const _$_Finished();

  @override
  String toString() {
    return 'TimerState.finished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Finished);
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
  const factory _Finished() = _$_Finished;
}
