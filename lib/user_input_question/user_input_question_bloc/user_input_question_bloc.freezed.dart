// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_input_question_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserInputQuestionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TestMode mode, TestUserInputQuestion question, bool isLast)
        started,
    required TResult Function(String? answer) inputChanged,
    required TResult Function() putOnHold,
    required TResult Function() answerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TestMode mode, TestUserInputQuestion question, bool isLast)?
        started,
    TResult? Function(String? answer)? inputChanged,
    TResult? Function()? putOnHold,
    TResult? Function()? answerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            TestMode mode, TestUserInputQuestion question, bool isLast)?
        started,
    TResult Function(String? answer)? inputChanged,
    TResult Function()? putOnHold,
    TResult Function()? answerSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AnswerSelected value) inputChanged,
    required TResult Function(_PutOnHold value) putOnHold,
    required TResult Function(_AnswerSubmitted value) answerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AnswerSelected value)? inputChanged,
    TResult? Function(_PutOnHold value)? putOnHold,
    TResult? Function(_AnswerSubmitted value)? answerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AnswerSelected value)? inputChanged,
    TResult Function(_PutOnHold value)? putOnHold,
    TResult Function(_AnswerSubmitted value)? answerSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInputQuestionEventCopyWith<$Res> {
  factory $UserInputQuestionEventCopyWith(UserInputQuestionEvent value,
          $Res Function(UserInputQuestionEvent) then) =
      _$UserInputQuestionEventCopyWithImpl<$Res, UserInputQuestionEvent>;
}

/// @nodoc
class _$UserInputQuestionEventCopyWithImpl<$Res,
        $Val extends UserInputQuestionEvent>
    implements $UserInputQuestionEventCopyWith<$Res> {
  _$UserInputQuestionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TestMode mode, TestUserInputQuestion question, bool isLast});

  $TestUserInputQuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$UserInputQuestionEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? question = null,
    Object? isLast = null,
  }) {
    return _then(_$StartedImpl(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as TestMode,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as TestUserInputQuestion,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TestUserInputQuestionCopyWith<$Res> get question {
    return $TestUserInputQuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(
      {required this.mode, required this.question, required this.isLast});

  @override
  final TestMode mode;
  @override
  final TestUserInputQuestion question;
  @override
  final bool isLast;

  @override
  String toString() {
    return 'UserInputQuestionEvent.started(mode: $mode, question: $question, isLast: $isLast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.isLast, isLast) || other.isLast == isLast));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode, question, isLast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TestMode mode, TestUserInputQuestion question, bool isLast)
        started,
    required TResult Function(String? answer) inputChanged,
    required TResult Function() putOnHold,
    required TResult Function() answerSubmitted,
  }) {
    return started(mode, question, isLast);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TestMode mode, TestUserInputQuestion question, bool isLast)?
        started,
    TResult? Function(String? answer)? inputChanged,
    TResult? Function()? putOnHold,
    TResult? Function()? answerSubmitted,
  }) {
    return started?.call(mode, question, isLast);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            TestMode mode, TestUserInputQuestion question, bool isLast)?
        started,
    TResult Function(String? answer)? inputChanged,
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
    required TResult Function(_Started value) started,
    required TResult Function(_AnswerSelected value) inputChanged,
    required TResult Function(_PutOnHold value) putOnHold,
    required TResult Function(_AnswerSubmitted value) answerSubmitted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AnswerSelected value)? inputChanged,
    TResult? Function(_PutOnHold value)? putOnHold,
    TResult? Function(_AnswerSubmitted value)? answerSubmitted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AnswerSelected value)? inputChanged,
    TResult Function(_PutOnHold value)? putOnHold,
    TResult Function(_AnswerSubmitted value)? answerSubmitted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserInputQuestionEvent {
  const factory _Started(
      {required final TestMode mode,
      required final TestUserInputQuestion question,
      required final bool isLast}) = _$StartedImpl;

  TestMode get mode;
  TestUserInputQuestion get question;
  bool get isLast;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnswerSelectedImplCopyWith<$Res> {
  factory _$$AnswerSelectedImplCopyWith(_$AnswerSelectedImpl value,
          $Res Function(_$AnswerSelectedImpl) then) =
      __$$AnswerSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? answer});
}

/// @nodoc
class __$$AnswerSelectedImplCopyWithImpl<$Res>
    extends _$UserInputQuestionEventCopyWithImpl<$Res, _$AnswerSelectedImpl>
    implements _$$AnswerSelectedImplCopyWith<$Res> {
  __$$AnswerSelectedImplCopyWithImpl(
      _$AnswerSelectedImpl _value, $Res Function(_$AnswerSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = freezed,
  }) {
    return _then(_$AnswerSelectedImpl(
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AnswerSelectedImpl implements _AnswerSelected {
  const _$AnswerSelectedImpl({required this.answer});

  @override
  final String? answer;

  @override
  String toString() {
    return 'UserInputQuestionEvent.inputChanged(answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerSelectedImpl &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerSelectedImplCopyWith<_$AnswerSelectedImpl> get copyWith =>
      __$$AnswerSelectedImplCopyWithImpl<_$AnswerSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TestMode mode, TestUserInputQuestion question, bool isLast)
        started,
    required TResult Function(String? answer) inputChanged,
    required TResult Function() putOnHold,
    required TResult Function() answerSubmitted,
  }) {
    return inputChanged(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TestMode mode, TestUserInputQuestion question, bool isLast)?
        started,
    TResult? Function(String? answer)? inputChanged,
    TResult? Function()? putOnHold,
    TResult? Function()? answerSubmitted,
  }) {
    return inputChanged?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            TestMode mode, TestUserInputQuestion question, bool isLast)?
        started,
    TResult Function(String? answer)? inputChanged,
    TResult Function()? putOnHold,
    TResult Function()? answerSubmitted,
    required TResult orElse(),
  }) {
    if (inputChanged != null) {
      return inputChanged(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AnswerSelected value) inputChanged,
    required TResult Function(_PutOnHold value) putOnHold,
    required TResult Function(_AnswerSubmitted value) answerSubmitted,
  }) {
    return inputChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AnswerSelected value)? inputChanged,
    TResult? Function(_PutOnHold value)? putOnHold,
    TResult? Function(_AnswerSubmitted value)? answerSubmitted,
  }) {
    return inputChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AnswerSelected value)? inputChanged,
    TResult Function(_PutOnHold value)? putOnHold,
    TResult Function(_AnswerSubmitted value)? answerSubmitted,
    required TResult orElse(),
  }) {
    if (inputChanged != null) {
      return inputChanged(this);
    }
    return orElse();
  }
}

abstract class _AnswerSelected implements UserInputQuestionEvent {
  const factory _AnswerSelected({required final String? answer}) =
      _$AnswerSelectedImpl;

  String? get answer;
  @JsonKey(ignore: true)
  _$$AnswerSelectedImplCopyWith<_$AnswerSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PutOnHoldImplCopyWith<$Res> {
  factory _$$PutOnHoldImplCopyWith(
          _$PutOnHoldImpl value, $Res Function(_$PutOnHoldImpl) then) =
      __$$PutOnHoldImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PutOnHoldImplCopyWithImpl<$Res>
    extends _$UserInputQuestionEventCopyWithImpl<$Res, _$PutOnHoldImpl>
    implements _$$PutOnHoldImplCopyWith<$Res> {
  __$$PutOnHoldImplCopyWithImpl(
      _$PutOnHoldImpl _value, $Res Function(_$PutOnHoldImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PutOnHoldImpl implements _PutOnHold {
  const _$PutOnHoldImpl();

  @override
  String toString() {
    return 'UserInputQuestionEvent.putOnHold()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PutOnHoldImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TestMode mode, TestUserInputQuestion question, bool isLast)
        started,
    required TResult Function(String? answer) inputChanged,
    required TResult Function() putOnHold,
    required TResult Function() answerSubmitted,
  }) {
    return putOnHold();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TestMode mode, TestUserInputQuestion question, bool isLast)?
        started,
    TResult? Function(String? answer)? inputChanged,
    TResult? Function()? putOnHold,
    TResult? Function()? answerSubmitted,
  }) {
    return putOnHold?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            TestMode mode, TestUserInputQuestion question, bool isLast)?
        started,
    TResult Function(String? answer)? inputChanged,
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
    required TResult Function(_Started value) started,
    required TResult Function(_AnswerSelected value) inputChanged,
    required TResult Function(_PutOnHold value) putOnHold,
    required TResult Function(_AnswerSubmitted value) answerSubmitted,
  }) {
    return putOnHold(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AnswerSelected value)? inputChanged,
    TResult? Function(_PutOnHold value)? putOnHold,
    TResult? Function(_AnswerSubmitted value)? answerSubmitted,
  }) {
    return putOnHold?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AnswerSelected value)? inputChanged,
    TResult Function(_PutOnHold value)? putOnHold,
    TResult Function(_AnswerSubmitted value)? answerSubmitted,
    required TResult orElse(),
  }) {
    if (putOnHold != null) {
      return putOnHold(this);
    }
    return orElse();
  }
}

abstract class _PutOnHold implements UserInputQuestionEvent {
  const factory _PutOnHold() = _$PutOnHoldImpl;
}

/// @nodoc
abstract class _$$AnswerSubmittedImplCopyWith<$Res> {
  factory _$$AnswerSubmittedImplCopyWith(_$AnswerSubmittedImpl value,
          $Res Function(_$AnswerSubmittedImpl) then) =
      __$$AnswerSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AnswerSubmittedImplCopyWithImpl<$Res>
    extends _$UserInputQuestionEventCopyWithImpl<$Res, _$AnswerSubmittedImpl>
    implements _$$AnswerSubmittedImplCopyWith<$Res> {
  __$$AnswerSubmittedImplCopyWithImpl(
      _$AnswerSubmittedImpl _value, $Res Function(_$AnswerSubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AnswerSubmittedImpl implements _AnswerSubmitted {
  const _$AnswerSubmittedImpl();

  @override
  String toString() {
    return 'UserInputQuestionEvent.answerSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AnswerSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TestMode mode, TestUserInputQuestion question, bool isLast)
        started,
    required TResult Function(String? answer) inputChanged,
    required TResult Function() putOnHold,
    required TResult Function() answerSubmitted,
  }) {
    return answerSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TestMode mode, TestUserInputQuestion question, bool isLast)?
        started,
    TResult? Function(String? answer)? inputChanged,
    TResult? Function()? putOnHold,
    TResult? Function()? answerSubmitted,
  }) {
    return answerSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            TestMode mode, TestUserInputQuestion question, bool isLast)?
        started,
    TResult Function(String? answer)? inputChanged,
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
    required TResult Function(_Started value) started,
    required TResult Function(_AnswerSelected value) inputChanged,
    required TResult Function(_PutOnHold value) putOnHold,
    required TResult Function(_AnswerSubmitted value) answerSubmitted,
  }) {
    return answerSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AnswerSelected value)? inputChanged,
    TResult? Function(_PutOnHold value)? putOnHold,
    TResult? Function(_AnswerSubmitted value)? answerSubmitted,
  }) {
    return answerSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AnswerSelected value)? inputChanged,
    TResult Function(_PutOnHold value)? putOnHold,
    TResult Function(_AnswerSubmitted value)? answerSubmitted,
    required TResult orElse(),
  }) {
    if (answerSubmitted != null) {
      return answerSubmitted(this);
    }
    return orElse();
  }
}

abstract class _AnswerSubmitted implements UserInputQuestionEvent {
  const factory _AnswerSubmitted() = _$AnswerSubmittedImpl;
}

/// @nodoc
mixin _$UserInputQuestionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TestMode mode, TestUserInputQuestion question,
            bool isLast, String? userInput)
        inProgress,
    required TResult Function(TestUserInputQuestion question, bool isLast,
            String? userInput, String correctAnswer)
        answered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TestMode mode, TestUserInputQuestion question,
            bool isLast, String? userInput)?
        inProgress,
    TResult? Function(TestUserInputQuestion question, bool isLast,
            String? userInput, String correctAnswer)?
        answered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TestMode mode, TestUserInputQuestion question, bool isLast,
            String? userInput)?
        inProgress,
    TResult Function(TestUserInputQuestion question, bool isLast,
            String? userInput, String correctAnswer)?
        answered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(Answered value) answered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(InProgress value)? inProgress,
    TResult? Function(Answered value)? answered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Answered value)? answered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInputQuestionStateCopyWith<$Res> {
  factory $UserInputQuestionStateCopyWith(UserInputQuestionState value,
          $Res Function(UserInputQuestionState) then) =
      _$UserInputQuestionStateCopyWithImpl<$Res, UserInputQuestionState>;
}

/// @nodoc
class _$UserInputQuestionStateCopyWithImpl<$Res,
        $Val extends UserInputQuestionState>
    implements $UserInputQuestionStateCopyWith<$Res> {
  _$UserInputQuestionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UserInputQuestionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl extends Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'UserInputQuestionState.initial()';
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
    required TResult Function(TestMode mode, TestUserInputQuestion question,
            bool isLast, String? userInput)
        inProgress,
    required TResult Function(TestUserInputQuestion question, bool isLast,
            String? userInput, String correctAnswer)
        answered,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TestMode mode, TestUserInputQuestion question,
            bool isLast, String? userInput)?
        inProgress,
    TResult? Function(TestUserInputQuestion question, bool isLast,
            String? userInput, String correctAnswer)?
        answered,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TestMode mode, TestUserInputQuestion question, bool isLast,
            String? userInput)?
        inProgress,
    TResult Function(TestUserInputQuestion question, bool isLast,
            String? userInput, String correctAnswer)?
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
    required TResult Function(Initial value) initial,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(Answered value) answered,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(InProgress value)? inProgress,
    TResult? Function(Answered value)? answered,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Answered value)? answered,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial extends UserInputQuestionState {
  const factory Initial() = _$InitialImpl;
  const Initial._() : super._();
}

/// @nodoc
abstract class _$$InProgressImplCopyWith<$Res> {
  factory _$$InProgressImplCopyWith(
          _$InProgressImpl value, $Res Function(_$InProgressImpl) then) =
      __$$InProgressImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {TestMode mode,
      TestUserInputQuestion question,
      bool isLast,
      String? userInput});

  $TestUserInputQuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$InProgressImplCopyWithImpl<$Res>
    extends _$UserInputQuestionStateCopyWithImpl<$Res, _$InProgressImpl>
    implements _$$InProgressImplCopyWith<$Res> {
  __$$InProgressImplCopyWithImpl(
      _$InProgressImpl _value, $Res Function(_$InProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? question = null,
    Object? isLast = null,
    Object? userInput = freezed,
  }) {
    return _then(_$InProgressImpl(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as TestMode,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as TestUserInputQuestion,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
      userInput: freezed == userInput
          ? _value.userInput
          : userInput // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TestUserInputQuestionCopyWith<$Res> get question {
    return $TestUserInputQuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc

class _$InProgressImpl extends InProgress {
  const _$InProgressImpl(
      {required this.mode,
      required this.question,
      required this.isLast,
      required this.userInput})
      : super._();

  @override
  final TestMode mode;
  @override
  final TestUserInputQuestion question;
  @override
  final bool isLast;
  @override
  final String? userInput;

  @override
  String toString() {
    return 'UserInputQuestionState.inProgress(mode: $mode, question: $question, isLast: $isLast, userInput: $userInput)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProgressImpl &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.isLast, isLast) || other.isLast == isLast) &&
            (identical(other.userInput, userInput) ||
                other.userInput == userInput));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, mode, question, isLast, userInput);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InProgressImplCopyWith<_$InProgressImpl> get copyWith =>
      __$$InProgressImplCopyWithImpl<_$InProgressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TestMode mode, TestUserInputQuestion question,
            bool isLast, String? userInput)
        inProgress,
    required TResult Function(TestUserInputQuestion question, bool isLast,
            String? userInput, String correctAnswer)
        answered,
  }) {
    return inProgress(mode, question, isLast, userInput);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TestMode mode, TestUserInputQuestion question,
            bool isLast, String? userInput)?
        inProgress,
    TResult? Function(TestUserInputQuestion question, bool isLast,
            String? userInput, String correctAnswer)?
        answered,
  }) {
    return inProgress?.call(mode, question, isLast, userInput);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TestMode mode, TestUserInputQuestion question, bool isLast,
            String? userInput)?
        inProgress,
    TResult Function(TestUserInputQuestion question, bool isLast,
            String? userInput, String correctAnswer)?
        answered,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(mode, question, isLast, userInput);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(Answered value) answered,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(InProgress value)? inProgress,
    TResult? Function(Answered value)? answered,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Answered value)? answered,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class InProgress extends UserInputQuestionState {
  const factory InProgress(
      {required final TestMode mode,
      required final TestUserInputQuestion question,
      required final bool isLast,
      required final String? userInput}) = _$InProgressImpl;
  const InProgress._() : super._();

  TestMode get mode;
  TestUserInputQuestion get question;
  bool get isLast;
  String? get userInput;
  @JsonKey(ignore: true)
  _$$InProgressImplCopyWith<_$InProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnsweredImplCopyWith<$Res> {
  factory _$$AnsweredImplCopyWith(
          _$AnsweredImpl value, $Res Function(_$AnsweredImpl) then) =
      __$$AnsweredImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {TestUserInputQuestion question,
      bool isLast,
      String? userInput,
      String correctAnswer});

  $TestUserInputQuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$AnsweredImplCopyWithImpl<$Res>
    extends _$UserInputQuestionStateCopyWithImpl<$Res, _$AnsweredImpl>
    implements _$$AnsweredImplCopyWith<$Res> {
  __$$AnsweredImplCopyWithImpl(
      _$AnsweredImpl _value, $Res Function(_$AnsweredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? isLast = null,
    Object? userInput = freezed,
    Object? correctAnswer = null,
  }) {
    return _then(_$AnsweredImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as TestUserInputQuestion,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
      userInput: freezed == userInput
          ? _value.userInput
          : userInput // ignore: cast_nullable_to_non_nullable
              as String?,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TestUserInputQuestionCopyWith<$Res> get question {
    return $TestUserInputQuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc

class _$AnsweredImpl extends Answered {
  const _$AnsweredImpl(
      {required this.question,
      required this.isLast,
      required this.userInput,
      required this.correctAnswer})
      : super._();

  @override
  final TestUserInputQuestion question;
  @override
  final bool isLast;
  @override
  final String? userInput;
  @override
  final String correctAnswer;

  @override
  String toString() {
    return 'UserInputQuestionState.answered(question: $question, isLast: $isLast, userInput: $userInput, correctAnswer: $correctAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnsweredImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.isLast, isLast) || other.isLast == isLast) &&
            (identical(other.userInput, userInput) ||
                other.userInput == userInput) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, question, isLast, userInput, correctAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnsweredImplCopyWith<_$AnsweredImpl> get copyWith =>
      __$$AnsweredImplCopyWithImpl<_$AnsweredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TestMode mode, TestUserInputQuestion question,
            bool isLast, String? userInput)
        inProgress,
    required TResult Function(TestUserInputQuestion question, bool isLast,
            String? userInput, String correctAnswer)
        answered,
  }) {
    return answered(question, isLast, userInput, correctAnswer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TestMode mode, TestUserInputQuestion question,
            bool isLast, String? userInput)?
        inProgress,
    TResult? Function(TestUserInputQuestion question, bool isLast,
            String? userInput, String correctAnswer)?
        answered,
  }) {
    return answered?.call(question, isLast, userInput, correctAnswer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TestMode mode, TestUserInputQuestion question, bool isLast,
            String? userInput)?
        inProgress,
    TResult Function(TestUserInputQuestion question, bool isLast,
            String? userInput, String correctAnswer)?
        answered,
    required TResult orElse(),
  }) {
    if (answered != null) {
      return answered(question, isLast, userInput, correctAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(Answered value) answered,
  }) {
    return answered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(InProgress value)? inProgress,
    TResult? Function(Answered value)? answered,
  }) {
    return answered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Answered value)? answered,
    required TResult orElse(),
  }) {
    if (answered != null) {
      return answered(this);
    }
    return orElse();
  }
}

abstract class Answered extends UserInputQuestionState {
  const factory Answered(
      {required final TestUserInputQuestion question,
      required final bool isLast,
      required final String? userInput,
      required final String correctAnswer}) = _$AnsweredImpl;
  const Answered._() : super._();

  TestUserInputQuestion get question;
  bool get isLast;
  String? get userInput;
  String get correctAnswer;
  @JsonKey(ignore: true)
  _$$AnsweredImplCopyWith<_$AnsweredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
