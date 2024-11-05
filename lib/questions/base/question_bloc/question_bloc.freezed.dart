// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionEvent<Q, A> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestMode mode, Q question, bool isLast) started,
    required TResult Function(A answer) answerSelected,
    required TResult Function() putOnHold,
    required TResult Function() answerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestMode mode, Q question, bool isLast)? started,
    TResult? Function(A answer)? answerSelected,
    TResult? Function()? putOnHold,
    TResult? Function()? answerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestMode mode, Q question, bool isLast)? started,
    TResult Function(A answer)? answerSelected,
    TResult Function()? putOnHold,
    TResult Function()? answerSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started<Q, A> value) started,
    required TResult Function(_AnswerSelected<Q, A> value) answerSelected,
    required TResult Function(_PutOnHold<Q, A> value) putOnHold,
    required TResult Function(_AnswerSubmitted<Q, A> value) answerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started<Q, A> value)? started,
    TResult? Function(_AnswerSelected<Q, A> value)? answerSelected,
    TResult? Function(_PutOnHold<Q, A> value)? putOnHold,
    TResult? Function(_AnswerSubmitted<Q, A> value)? answerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started<Q, A> value)? started,
    TResult Function(_AnswerSelected<Q, A> value)? answerSelected,
    TResult Function(_PutOnHold<Q, A> value)? putOnHold,
    TResult Function(_AnswerSubmitted<Q, A> value)? answerSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionEventCopyWith<Q, A, $Res> {
  factory $QuestionEventCopyWith(
          QuestionEvent<Q, A> value, $Res Function(QuestionEvent<Q, A>) then) =
      _$QuestionEventCopyWithImpl<Q, A, $Res, QuestionEvent<Q, A>>;
}

/// @nodoc
class _$QuestionEventCopyWithImpl<Q, A, $Res, $Val extends QuestionEvent<Q, A>>
    implements $QuestionEventCopyWith<Q, A, $Res> {
  _$QuestionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<Q, A, $Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl<Q, A> value, $Res Function(_$StartedImpl<Q, A>) then) =
      __$$StartedImplCopyWithImpl<Q, A, $Res>;
  @useResult
  $Res call({TestMode mode, Q question, bool isLast});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<Q, A, $Res>
    extends _$QuestionEventCopyWithImpl<Q, A, $Res, _$StartedImpl<Q, A>>
    implements _$$StartedImplCopyWith<Q, A, $Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl<Q, A> _value, $Res Function(_$StartedImpl<Q, A>) _then)
      : super(_value, _then);

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? question = freezed,
    Object? isLast = null,
  }) {
    return _then(_$StartedImpl<Q, A>(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as TestMode,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Q,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StartedImpl<Q, A> implements _Started<Q, A> {
  const _$StartedImpl(
      {required this.mode, required this.question, required this.isLast});

  @override
  final TestMode mode;
  @override
  final Q question;
  @override
  final bool isLast;

  @override
  String toString() {
    return 'QuestionEvent<$Q, $A>.started(mode: $mode, question: $question, isLast: $isLast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl<Q, A> &&
            (identical(other.mode, mode) || other.mode == mode) &&
            const DeepCollectionEquality().equals(other.question, question) &&
            (identical(other.isLast, isLast) || other.isLast == isLast));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, mode, const DeepCollectionEquality().hash(question), isLast);

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<Q, A, _$StartedImpl<Q, A>> get copyWith =>
      __$$StartedImplCopyWithImpl<Q, A, _$StartedImpl<Q, A>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestMode mode, Q question, bool isLast) started,
    required TResult Function(A answer) answerSelected,
    required TResult Function() putOnHold,
    required TResult Function() answerSubmitted,
  }) {
    return started(mode, question, isLast);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestMode mode, Q question, bool isLast)? started,
    TResult? Function(A answer)? answerSelected,
    TResult? Function()? putOnHold,
    TResult? Function()? answerSubmitted,
  }) {
    return started?.call(mode, question, isLast);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestMode mode, Q question, bool isLast)? started,
    TResult Function(A answer)? answerSelected,
    TResult Function()? putOnHold,
    TResult Function()? answerSubmitted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(mode, question, isLast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started<Q, A> value) started,
    required TResult Function(_AnswerSelected<Q, A> value) answerSelected,
    required TResult Function(_PutOnHold<Q, A> value) putOnHold,
    required TResult Function(_AnswerSubmitted<Q, A> value) answerSubmitted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started<Q, A> value)? started,
    TResult? Function(_AnswerSelected<Q, A> value)? answerSelected,
    TResult? Function(_PutOnHold<Q, A> value)? putOnHold,
    TResult? Function(_AnswerSubmitted<Q, A> value)? answerSubmitted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started<Q, A> value)? started,
    TResult Function(_AnswerSelected<Q, A> value)? answerSelected,
    TResult Function(_PutOnHold<Q, A> value)? putOnHold,
    TResult Function(_AnswerSubmitted<Q, A> value)? answerSubmitted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started<Q, A> implements QuestionEvent<Q, A> {
  const factory _Started(
      {required final TestMode mode,
      required final Q question,
      required final bool isLast}) = _$StartedImpl<Q, A>;

  TestMode get mode;
  Q get question;
  bool get isLast;

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartedImplCopyWith<Q, A, _$StartedImpl<Q, A>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnswerSelectedImplCopyWith<Q, A, $Res> {
  factory _$$AnswerSelectedImplCopyWith(_$AnswerSelectedImpl<Q, A> value,
          $Res Function(_$AnswerSelectedImpl<Q, A>) then) =
      __$$AnswerSelectedImplCopyWithImpl<Q, A, $Res>;
  @useResult
  $Res call({A answer});
}

/// @nodoc
class __$$AnswerSelectedImplCopyWithImpl<Q, A, $Res>
    extends _$QuestionEventCopyWithImpl<Q, A, $Res, _$AnswerSelectedImpl<Q, A>>
    implements _$$AnswerSelectedImplCopyWith<Q, A, $Res> {
  __$$AnswerSelectedImplCopyWithImpl(_$AnswerSelectedImpl<Q, A> _value,
      $Res Function(_$AnswerSelectedImpl<Q, A>) _then)
      : super(_value, _then);

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = freezed,
  }) {
    return _then(_$AnswerSelectedImpl<Q, A>(
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as A,
    ));
  }
}

/// @nodoc

class _$AnswerSelectedImpl<Q, A> implements _AnswerSelected<Q, A> {
  const _$AnswerSelectedImpl({required this.answer});

  @override
  final A answer;

  @override
  String toString() {
    return 'QuestionEvent<$Q, $A>.answerSelected(answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerSelectedImpl<Q, A> &&
            const DeepCollectionEquality().equals(other.answer, answer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(answer));

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerSelectedImplCopyWith<Q, A, _$AnswerSelectedImpl<Q, A>>
      get copyWith =>
          __$$AnswerSelectedImplCopyWithImpl<Q, A, _$AnswerSelectedImpl<Q, A>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestMode mode, Q question, bool isLast) started,
    required TResult Function(A answer) answerSelected,
    required TResult Function() putOnHold,
    required TResult Function() answerSubmitted,
  }) {
    return answerSelected(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestMode mode, Q question, bool isLast)? started,
    TResult? Function(A answer)? answerSelected,
    TResult? Function()? putOnHold,
    TResult? Function()? answerSubmitted,
  }) {
    return answerSelected?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestMode mode, Q question, bool isLast)? started,
    TResult Function(A answer)? answerSelected,
    TResult Function()? putOnHold,
    TResult Function()? answerSubmitted,
    required TResult orElse(),
  }) {
    if (answerSelected != null) {
      return answerSelected(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started<Q, A> value) started,
    required TResult Function(_AnswerSelected<Q, A> value) answerSelected,
    required TResult Function(_PutOnHold<Q, A> value) putOnHold,
    required TResult Function(_AnswerSubmitted<Q, A> value) answerSubmitted,
  }) {
    return answerSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started<Q, A> value)? started,
    TResult? Function(_AnswerSelected<Q, A> value)? answerSelected,
    TResult? Function(_PutOnHold<Q, A> value)? putOnHold,
    TResult? Function(_AnswerSubmitted<Q, A> value)? answerSubmitted,
  }) {
    return answerSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started<Q, A> value)? started,
    TResult Function(_AnswerSelected<Q, A> value)? answerSelected,
    TResult Function(_PutOnHold<Q, A> value)? putOnHold,
    TResult Function(_AnswerSubmitted<Q, A> value)? answerSubmitted,
    required TResult orElse(),
  }) {
    if (answerSelected != null) {
      return answerSelected(this);
    }
    return orElse();
  }
}

abstract class _AnswerSelected<Q, A> implements QuestionEvent<Q, A> {
  const factory _AnswerSelected({required final A answer}) =
      _$AnswerSelectedImpl<Q, A>;

  A get answer;

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerSelectedImplCopyWith<Q, A, _$AnswerSelectedImpl<Q, A>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PutOnHoldImplCopyWith<Q, A, $Res> {
  factory _$$PutOnHoldImplCopyWith(_$PutOnHoldImpl<Q, A> value,
          $Res Function(_$PutOnHoldImpl<Q, A>) then) =
      __$$PutOnHoldImplCopyWithImpl<Q, A, $Res>;
}

/// @nodoc
class __$$PutOnHoldImplCopyWithImpl<Q, A, $Res>
    extends _$QuestionEventCopyWithImpl<Q, A, $Res, _$PutOnHoldImpl<Q, A>>
    implements _$$PutOnHoldImplCopyWith<Q, A, $Res> {
  __$$PutOnHoldImplCopyWithImpl(
      _$PutOnHoldImpl<Q, A> _value, $Res Function(_$PutOnHoldImpl<Q, A>) _then)
      : super(_value, _then);

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PutOnHoldImpl<Q, A> implements _PutOnHold<Q, A> {
  const _$PutOnHoldImpl();

  @override
  String toString() {
    return 'QuestionEvent<$Q, $A>.putOnHold()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PutOnHoldImpl<Q, A>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestMode mode, Q question, bool isLast) started,
    required TResult Function(A answer) answerSelected,
    required TResult Function() putOnHold,
    required TResult Function() answerSubmitted,
  }) {
    return putOnHold();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestMode mode, Q question, bool isLast)? started,
    TResult? Function(A answer)? answerSelected,
    TResult? Function()? putOnHold,
    TResult? Function()? answerSubmitted,
  }) {
    return putOnHold?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestMode mode, Q question, bool isLast)? started,
    TResult Function(A answer)? answerSelected,
    TResult Function()? putOnHold,
    TResult Function()? answerSubmitted,
    required TResult orElse(),
  }) {
    if (putOnHold != null) {
      return putOnHold();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started<Q, A> value) started,
    required TResult Function(_AnswerSelected<Q, A> value) answerSelected,
    required TResult Function(_PutOnHold<Q, A> value) putOnHold,
    required TResult Function(_AnswerSubmitted<Q, A> value) answerSubmitted,
  }) {
    return putOnHold(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started<Q, A> value)? started,
    TResult? Function(_AnswerSelected<Q, A> value)? answerSelected,
    TResult? Function(_PutOnHold<Q, A> value)? putOnHold,
    TResult? Function(_AnswerSubmitted<Q, A> value)? answerSubmitted,
  }) {
    return putOnHold?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started<Q, A> value)? started,
    TResult Function(_AnswerSelected<Q, A> value)? answerSelected,
    TResult Function(_PutOnHold<Q, A> value)? putOnHold,
    TResult Function(_AnswerSubmitted<Q, A> value)? answerSubmitted,
    required TResult orElse(),
  }) {
    if (putOnHold != null) {
      return putOnHold(this);
    }
    return orElse();
  }
}

abstract class _PutOnHold<Q, A> implements QuestionEvent<Q, A> {
  const factory _PutOnHold() = _$PutOnHoldImpl<Q, A>;
}

/// @nodoc
abstract class _$$AnswerSubmittedImplCopyWith<Q, A, $Res> {
  factory _$$AnswerSubmittedImplCopyWith(_$AnswerSubmittedImpl<Q, A> value,
          $Res Function(_$AnswerSubmittedImpl<Q, A>) then) =
      __$$AnswerSubmittedImplCopyWithImpl<Q, A, $Res>;
}

/// @nodoc
class __$$AnswerSubmittedImplCopyWithImpl<Q, A, $Res>
    extends _$QuestionEventCopyWithImpl<Q, A, $Res, _$AnswerSubmittedImpl<Q, A>>
    implements _$$AnswerSubmittedImplCopyWith<Q, A, $Res> {
  __$$AnswerSubmittedImplCopyWithImpl(_$AnswerSubmittedImpl<Q, A> _value,
      $Res Function(_$AnswerSubmittedImpl<Q, A>) _then)
      : super(_value, _then);

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AnswerSubmittedImpl<Q, A> implements _AnswerSubmitted<Q, A> {
  const _$AnswerSubmittedImpl();

  @override
  String toString() {
    return 'QuestionEvent<$Q, $A>.answerSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerSubmittedImpl<Q, A>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestMode mode, Q question, bool isLast) started,
    required TResult Function(A answer) answerSelected,
    required TResult Function() putOnHold,
    required TResult Function() answerSubmitted,
  }) {
    return answerSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestMode mode, Q question, bool isLast)? started,
    TResult? Function(A answer)? answerSelected,
    TResult? Function()? putOnHold,
    TResult? Function()? answerSubmitted,
  }) {
    return answerSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestMode mode, Q question, bool isLast)? started,
    TResult Function(A answer)? answerSelected,
    TResult Function()? putOnHold,
    TResult Function()? answerSubmitted,
    required TResult orElse(),
  }) {
    if (answerSubmitted != null) {
      return answerSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started<Q, A> value) started,
    required TResult Function(_AnswerSelected<Q, A> value) answerSelected,
    required TResult Function(_PutOnHold<Q, A> value) putOnHold,
    required TResult Function(_AnswerSubmitted<Q, A> value) answerSubmitted,
  }) {
    return answerSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started<Q, A> value)? started,
    TResult? Function(_AnswerSelected<Q, A> value)? answerSelected,
    TResult? Function(_PutOnHold<Q, A> value)? putOnHold,
    TResult? Function(_AnswerSubmitted<Q, A> value)? answerSubmitted,
  }) {
    return answerSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started<Q, A> value)? started,
    TResult Function(_AnswerSelected<Q, A> value)? answerSelected,
    TResult Function(_PutOnHold<Q, A> value)? putOnHold,
    TResult Function(_AnswerSubmitted<Q, A> value)? answerSubmitted,
    required TResult orElse(),
  }) {
    if (answerSubmitted != null) {
      return answerSubmitted(this);
    }
    return orElse();
  }
}

abstract class _AnswerSubmitted<Q, A> implements QuestionEvent<Q, A> {
  const factory _AnswerSubmitted() = _$AnswerSubmittedImpl<Q, A>;
}

/// @nodoc
mixin _$QuestionState<Q, A> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            TestMode mode, Q question, bool isLast, A selectedAnswers)
        inProgress,
    required TResult Function(
            Q question, bool isLast, A selectedAnswers, A correctAnswers)
        answered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            TestMode mode, Q question, bool isLast, A selectedAnswers)?
        inProgress,
    TResult? Function(
            Q question, bool isLast, A selectedAnswers, A correctAnswers)?
        answered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TestMode mode, Q question, bool isLast, A selectedAnswers)?
        inProgress,
    TResult Function(
            Q question, bool isLast, A selectedAnswers, A correctAnswers)?
        answered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<Q, A> value) initial,
    required TResult Function(InProgress<Q, A> value) inProgress,
    required TResult Function(Answered<Q, A> value) answered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<Q, A> value)? initial,
    TResult? Function(InProgress<Q, A> value)? inProgress,
    TResult? Function(Answered<Q, A> value)? answered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<Q, A> value)? initial,
    TResult Function(InProgress<Q, A> value)? inProgress,
    TResult Function(Answered<Q, A> value)? answered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionStateCopyWith<Q, A, $Res> {
  factory $QuestionStateCopyWith(
          QuestionState<Q, A> value, $Res Function(QuestionState<Q, A>) then) =
      _$QuestionStateCopyWithImpl<Q, A, $Res, QuestionState<Q, A>>;
}

/// @nodoc
class _$QuestionStateCopyWithImpl<Q, A, $Res, $Val extends QuestionState<Q, A>>
    implements $QuestionStateCopyWith<Q, A, $Res> {
  _$QuestionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<Q, A, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<Q, A> value, $Res Function(_$InitialImpl<Q, A>) then) =
      __$$InitialImplCopyWithImpl<Q, A, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<Q, A, $Res>
    extends _$QuestionStateCopyWithImpl<Q, A, $Res, _$InitialImpl<Q, A>>
    implements _$$InitialImplCopyWith<Q, A, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<Q, A> _value, $Res Function(_$InitialImpl<Q, A>) _then)
      : super(_value, _then);

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<Q, A> extends Initial<Q, A> {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'QuestionState<$Q, $A>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<Q, A>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            TestMode mode, Q question, bool isLast, A selectedAnswers)
        inProgress,
    required TResult Function(
            Q question, bool isLast, A selectedAnswers, A correctAnswers)
        answered,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            TestMode mode, Q question, bool isLast, A selectedAnswers)?
        inProgress,
    TResult? Function(
            Q question, bool isLast, A selectedAnswers, A correctAnswers)?
        answered,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TestMode mode, Q question, bool isLast, A selectedAnswers)?
        inProgress,
    TResult Function(
            Q question, bool isLast, A selectedAnswers, A correctAnswers)?
        answered,
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
    required TResult Function(Initial<Q, A> value) initial,
    required TResult Function(InProgress<Q, A> value) inProgress,
    required TResult Function(Answered<Q, A> value) answered,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<Q, A> value)? initial,
    TResult? Function(InProgress<Q, A> value)? inProgress,
    TResult? Function(Answered<Q, A> value)? answered,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<Q, A> value)? initial,
    TResult Function(InProgress<Q, A> value)? inProgress,
    TResult Function(Answered<Q, A> value)? answered,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial<Q, A> extends QuestionState<Q, A> {
  const factory Initial() = _$InitialImpl<Q, A>;
  const Initial._() : super._();
}

/// @nodoc
abstract class _$$InProgressImplCopyWith<Q, A, $Res> {
  factory _$$InProgressImplCopyWith(_$InProgressImpl<Q, A> value,
          $Res Function(_$InProgressImpl<Q, A>) then) =
      __$$InProgressImplCopyWithImpl<Q, A, $Res>;
  @useResult
  $Res call({TestMode mode, Q question, bool isLast, A selectedAnswers});
}

/// @nodoc
class __$$InProgressImplCopyWithImpl<Q, A, $Res>
    extends _$QuestionStateCopyWithImpl<Q, A, $Res, _$InProgressImpl<Q, A>>
    implements _$$InProgressImplCopyWith<Q, A, $Res> {
  __$$InProgressImplCopyWithImpl(_$InProgressImpl<Q, A> _value,
      $Res Function(_$InProgressImpl<Q, A>) _then)
      : super(_value, _then);

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? question = freezed,
    Object? isLast = null,
    Object? selectedAnswers = freezed,
  }) {
    return _then(_$InProgressImpl<Q, A>(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as TestMode,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Q,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedAnswers: freezed == selectedAnswers
          ? _value.selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as A,
    ));
  }
}

/// @nodoc

class _$InProgressImpl<Q, A> extends InProgress<Q, A> {
  const _$InProgressImpl(
      {required this.mode,
      required this.question,
      required this.isLast,
      required this.selectedAnswers})
      : super._();

  @override
  final TestMode mode;
  @override
  final Q question;
  @override
  final bool isLast;
  @override
  final A selectedAnswers;

  @override
  String toString() {
    return 'QuestionState<$Q, $A>.inProgress(mode: $mode, question: $question, isLast: $isLast, selectedAnswers: $selectedAnswers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProgressImpl<Q, A> &&
            (identical(other.mode, mode) || other.mode == mode) &&
            const DeepCollectionEquality().equals(other.question, question) &&
            (identical(other.isLast, isLast) || other.isLast == isLast) &&
            const DeepCollectionEquality()
                .equals(other.selectedAnswers, selectedAnswers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      mode,
      const DeepCollectionEquality().hash(question),
      isLast,
      const DeepCollectionEquality().hash(selectedAnswers));

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InProgressImplCopyWith<Q, A, _$InProgressImpl<Q, A>> get copyWith =>
      __$$InProgressImplCopyWithImpl<Q, A, _$InProgressImpl<Q, A>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            TestMode mode, Q question, bool isLast, A selectedAnswers)
        inProgress,
    required TResult Function(
            Q question, bool isLast, A selectedAnswers, A correctAnswers)
        answered,
  }) {
    return inProgress(mode, question, isLast, selectedAnswers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            TestMode mode, Q question, bool isLast, A selectedAnswers)?
        inProgress,
    TResult? Function(
            Q question, bool isLast, A selectedAnswers, A correctAnswers)?
        answered,
  }) {
    return inProgress?.call(mode, question, isLast, selectedAnswers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TestMode mode, Q question, bool isLast, A selectedAnswers)?
        inProgress,
    TResult Function(
            Q question, bool isLast, A selectedAnswers, A correctAnswers)?
        answered,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(mode, question, isLast, selectedAnswers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<Q, A> value) initial,
    required TResult Function(InProgress<Q, A> value) inProgress,
    required TResult Function(Answered<Q, A> value) answered,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<Q, A> value)? initial,
    TResult? Function(InProgress<Q, A> value)? inProgress,
    TResult? Function(Answered<Q, A> value)? answered,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<Q, A> value)? initial,
    TResult Function(InProgress<Q, A> value)? inProgress,
    TResult Function(Answered<Q, A> value)? answered,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class InProgress<Q, A> extends QuestionState<Q, A> {
  const factory InProgress(
      {required final TestMode mode,
      required final Q question,
      required final bool isLast,
      required final A selectedAnswers}) = _$InProgressImpl<Q, A>;
  const InProgress._() : super._();

  TestMode get mode;
  Q get question;
  bool get isLast;
  A get selectedAnswers;

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InProgressImplCopyWith<Q, A, _$InProgressImpl<Q, A>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnsweredImplCopyWith<Q, A, $Res> {
  factory _$$AnsweredImplCopyWith(_$AnsweredImpl<Q, A> value,
          $Res Function(_$AnsweredImpl<Q, A>) then) =
      __$$AnsweredImplCopyWithImpl<Q, A, $Res>;
  @useResult
  $Res call({Q question, bool isLast, A selectedAnswers, A correctAnswers});
}

/// @nodoc
class __$$AnsweredImplCopyWithImpl<Q, A, $Res>
    extends _$QuestionStateCopyWithImpl<Q, A, $Res, _$AnsweredImpl<Q, A>>
    implements _$$AnsweredImplCopyWith<Q, A, $Res> {
  __$$AnsweredImplCopyWithImpl(
      _$AnsweredImpl<Q, A> _value, $Res Function(_$AnsweredImpl<Q, A>) _then)
      : super(_value, _then);

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? isLast = null,
    Object? selectedAnswers = freezed,
    Object? correctAnswers = freezed,
  }) {
    return _then(_$AnsweredImpl<Q, A>(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Q,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedAnswers: freezed == selectedAnswers
          ? _value.selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as A,
      correctAnswers: freezed == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as A,
    ));
  }
}

/// @nodoc

class _$AnsweredImpl<Q, A> extends Answered<Q, A> {
  const _$AnsweredImpl(
      {required this.question,
      required this.isLast,
      required this.selectedAnswers,
      required this.correctAnswers})
      : super._();

  @override
  final Q question;
  @override
  final bool isLast;
  @override
  final A selectedAnswers;
  @override
  final A correctAnswers;

  @override
  String toString() {
    return 'QuestionState<$Q, $A>.answered(question: $question, isLast: $isLast, selectedAnswers: $selectedAnswers, correctAnswers: $correctAnswers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnsweredImpl<Q, A> &&
            const DeepCollectionEquality().equals(other.question, question) &&
            (identical(other.isLast, isLast) || other.isLast == isLast) &&
            const DeepCollectionEquality()
                .equals(other.selectedAnswers, selectedAnswers) &&
            const DeepCollectionEquality()
                .equals(other.correctAnswers, correctAnswers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(question),
      isLast,
      const DeepCollectionEquality().hash(selectedAnswers),
      const DeepCollectionEquality().hash(correctAnswers));

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnsweredImplCopyWith<Q, A, _$AnsweredImpl<Q, A>> get copyWith =>
      __$$AnsweredImplCopyWithImpl<Q, A, _$AnsweredImpl<Q, A>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            TestMode mode, Q question, bool isLast, A selectedAnswers)
        inProgress,
    required TResult Function(
            Q question, bool isLast, A selectedAnswers, A correctAnswers)
        answered,
  }) {
    return answered(question, isLast, selectedAnswers, correctAnswers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            TestMode mode, Q question, bool isLast, A selectedAnswers)?
        inProgress,
    TResult? Function(
            Q question, bool isLast, A selectedAnswers, A correctAnswers)?
        answered,
  }) {
    return answered?.call(question, isLast, selectedAnswers, correctAnswers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TestMode mode, Q question, bool isLast, A selectedAnswers)?
        inProgress,
    TResult Function(
            Q question, bool isLast, A selectedAnswers, A correctAnswers)?
        answered,
    required TResult orElse(),
  }) {
    if (answered != null) {
      return answered(question, isLast, selectedAnswers, correctAnswers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<Q, A> value) initial,
    required TResult Function(InProgress<Q, A> value) inProgress,
    required TResult Function(Answered<Q, A> value) answered,
  }) {
    return answered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<Q, A> value)? initial,
    TResult? Function(InProgress<Q, A> value)? inProgress,
    TResult? Function(Answered<Q, A> value)? answered,
  }) {
    return answered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<Q, A> value)? initial,
    TResult Function(InProgress<Q, A> value)? inProgress,
    TResult Function(Answered<Q, A> value)? answered,
    required TResult orElse(),
  }) {
    if (answered != null) {
      return answered(this);
    }
    return orElse();
  }
}

abstract class Answered<Q, A> extends QuestionState<Q, A> {
  const factory Answered(
      {required final Q question,
      required final bool isLast,
      required final A selectedAnswers,
      required final A correctAnswers}) = _$AnsweredImpl<Q, A>;
  const Answered._() : super._();

  Q get question;
  bool get isLast;
  A get selectedAnswers;
  A get correctAnswers;

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnsweredImplCopyWith<Q, A, _$AnsweredImpl<Q, A>> get copyWith =>
      throw _privateConstructorUsedError;
}
