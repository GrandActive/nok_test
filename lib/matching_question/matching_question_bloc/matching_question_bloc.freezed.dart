// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'matching_question_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MatchingQuestionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TestMode mode, TestMatchingQuestion question, bool isLast)
        started,
    required TResult Function(Map<int, int?> answer) answerSelected,
    required TResult Function() putOnHold,
    required TResult Function() answerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TestMode mode, TestMatchingQuestion question, bool isLast)?
        started,
    TResult? Function(Map<int, int?> answer)? answerSelected,
    TResult? Function()? putOnHold,
    TResult? Function()? answerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestMode mode, TestMatchingQuestion question, bool isLast)?
        started,
    TResult Function(Map<int, int?> answer)? answerSelected,
    TResult Function()? putOnHold,
    TResult Function()? answerSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AnswerSelected value) answerSelected,
    required TResult Function(_PutOnHold value) putOnHold,
    required TResult Function(_AnswerSubmitted value) answerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AnswerSelected value)? answerSelected,
    TResult? Function(_PutOnHold value)? putOnHold,
    TResult? Function(_AnswerSubmitted value)? answerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AnswerSelected value)? answerSelected,
    TResult Function(_PutOnHold value)? putOnHold,
    TResult Function(_AnswerSubmitted value)? answerSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchingQuestionEventCopyWith<$Res> {
  factory $MatchingQuestionEventCopyWith(MatchingQuestionEvent value,
          $Res Function(MatchingQuestionEvent) then) =
      _$MatchingQuestionEventCopyWithImpl<$Res, MatchingQuestionEvent>;
}

/// @nodoc
class _$MatchingQuestionEventCopyWithImpl<$Res,
        $Val extends MatchingQuestionEvent>
    implements $MatchingQuestionEventCopyWith<$Res> {
  _$MatchingQuestionEventCopyWithImpl(this._value, this._then);

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
  $Res call({TestMode mode, TestMatchingQuestion question, bool isLast});

  $TestMatchingQuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$MatchingQuestionEventCopyWithImpl<$Res, _$StartedImpl>
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
              as TestMatchingQuestion,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TestMatchingQuestionCopyWith<$Res> get question {
    return $TestMatchingQuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl(
      {required this.mode, required this.question, required this.isLast});

  @override
  final TestMode mode;
  @override
  final TestMatchingQuestion question;
  @override
  final bool isLast;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MatchingQuestionEvent.started(mode: $mode, question: $question, isLast: $isLast)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MatchingQuestionEvent.started'))
      ..add(DiagnosticsProperty('mode', mode))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('isLast', isLast));
  }

  @override
  bool operator ==(dynamic other) {
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
            TestMode mode, TestMatchingQuestion question, bool isLast)
        started,
    required TResult Function(Map<int, int?> answer) answerSelected,
    required TResult Function() putOnHold,
    required TResult Function() answerSubmitted,
  }) {
    return started(mode, question, isLast);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TestMode mode, TestMatchingQuestion question, bool isLast)?
        started,
    TResult? Function(Map<int, int?> answer)? answerSelected,
    TResult? Function()? putOnHold,
    TResult? Function()? answerSubmitted,
  }) {
    return started?.call(mode, question, isLast);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestMode mode, TestMatchingQuestion question, bool isLast)?
        started,
    TResult Function(Map<int, int?> answer)? answerSelected,
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
    required TResult Function(_AnswerSelected value) answerSelected,
    required TResult Function(_PutOnHold value) putOnHold,
    required TResult Function(_AnswerSubmitted value) answerSubmitted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AnswerSelected value)? answerSelected,
    TResult? Function(_PutOnHold value)? putOnHold,
    TResult? Function(_AnswerSubmitted value)? answerSubmitted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AnswerSelected value)? answerSelected,
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

abstract class _Started implements MatchingQuestionEvent {
  const factory _Started(
      {required final TestMode mode,
      required final TestMatchingQuestion question,
      required final bool isLast}) = _$StartedImpl;

  TestMode get mode;
  TestMatchingQuestion get question;
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
  $Res call({Map<int, int?> answer});
}

/// @nodoc
class __$$AnswerSelectedImplCopyWithImpl<$Res>
    extends _$MatchingQuestionEventCopyWithImpl<$Res, _$AnswerSelectedImpl>
    implements _$$AnswerSelectedImplCopyWith<$Res> {
  __$$AnswerSelectedImplCopyWithImpl(
      _$AnswerSelectedImpl _value, $Res Function(_$AnswerSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
  }) {
    return _then(_$AnswerSelectedImpl(
      answer: null == answer
          ? _value._answer
          : answer // ignore: cast_nullable_to_non_nullable
              as Map<int, int?>,
    ));
  }
}

/// @nodoc

class _$AnswerSelectedImpl
    with DiagnosticableTreeMixin
    implements _AnswerSelected {
  const _$AnswerSelectedImpl({required final Map<int, int?> answer})
      : _answer = answer;

  final Map<int, int?> _answer;
  @override
  Map<int, int?> get answer {
    if (_answer is EqualUnmodifiableMapView) return _answer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_answer);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MatchingQuestionEvent.answerSelected(answer: $answer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MatchingQuestionEvent.answerSelected'))
      ..add(DiagnosticsProperty('answer', answer));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerSelectedImpl &&
            const DeepCollectionEquality().equals(other._answer, _answer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_answer));

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
            TestMode mode, TestMatchingQuestion question, bool isLast)
        started,
    required TResult Function(Map<int, int?> answer) answerSelected,
    required TResult Function() putOnHold,
    required TResult Function() answerSubmitted,
  }) {
    return answerSelected(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TestMode mode, TestMatchingQuestion question, bool isLast)?
        started,
    TResult? Function(Map<int, int?> answer)? answerSelected,
    TResult? Function()? putOnHold,
    TResult? Function()? answerSubmitted,
  }) {
    return answerSelected?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestMode mode, TestMatchingQuestion question, bool isLast)?
        started,
    TResult Function(Map<int, int?> answer)? answerSelected,
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
    required TResult Function(_Started value) started,
    required TResult Function(_AnswerSelected value) answerSelected,
    required TResult Function(_PutOnHold value) putOnHold,
    required TResult Function(_AnswerSubmitted value) answerSubmitted,
  }) {
    return answerSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AnswerSelected value)? answerSelected,
    TResult? Function(_PutOnHold value)? putOnHold,
    TResult? Function(_AnswerSubmitted value)? answerSubmitted,
  }) {
    return answerSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AnswerSelected value)? answerSelected,
    TResult Function(_PutOnHold value)? putOnHold,
    TResult Function(_AnswerSubmitted value)? answerSubmitted,
    required TResult orElse(),
  }) {
    if (answerSelected != null) {
      return answerSelected(this);
    }
    return orElse();
  }
}

abstract class _AnswerSelected implements MatchingQuestionEvent {
  const factory _AnswerSelected({required final Map<int, int?> answer}) =
      _$AnswerSelectedImpl;

  Map<int, int?> get answer;
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
    extends _$MatchingQuestionEventCopyWithImpl<$Res, _$PutOnHoldImpl>
    implements _$$PutOnHoldImplCopyWith<$Res> {
  __$$PutOnHoldImplCopyWithImpl(
      _$PutOnHoldImpl _value, $Res Function(_$PutOnHoldImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PutOnHoldImpl with DiagnosticableTreeMixin implements _PutOnHold {
  const _$PutOnHoldImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MatchingQuestionEvent.putOnHold()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'MatchingQuestionEvent.putOnHold'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PutOnHoldImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TestMode mode, TestMatchingQuestion question, bool isLast)
        started,
    required TResult Function(Map<int, int?> answer) answerSelected,
    required TResult Function() putOnHold,
    required TResult Function() answerSubmitted,
  }) {
    return putOnHold();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TestMode mode, TestMatchingQuestion question, bool isLast)?
        started,
    TResult? Function(Map<int, int?> answer)? answerSelected,
    TResult? Function()? putOnHold,
    TResult? Function()? answerSubmitted,
  }) {
    return putOnHold?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestMode mode, TestMatchingQuestion question, bool isLast)?
        started,
    TResult Function(Map<int, int?> answer)? answerSelected,
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
    required TResult Function(_AnswerSelected value) answerSelected,
    required TResult Function(_PutOnHold value) putOnHold,
    required TResult Function(_AnswerSubmitted value) answerSubmitted,
  }) {
    return putOnHold(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AnswerSelected value)? answerSelected,
    TResult? Function(_PutOnHold value)? putOnHold,
    TResult? Function(_AnswerSubmitted value)? answerSubmitted,
  }) {
    return putOnHold?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AnswerSelected value)? answerSelected,
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

abstract class _PutOnHold implements MatchingQuestionEvent {
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
    extends _$MatchingQuestionEventCopyWithImpl<$Res, _$AnswerSubmittedImpl>
    implements _$$AnswerSubmittedImplCopyWith<$Res> {
  __$$AnswerSubmittedImplCopyWithImpl(
      _$AnswerSubmittedImpl _value, $Res Function(_$AnswerSubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AnswerSubmittedImpl
    with DiagnosticableTreeMixin
    implements _AnswerSubmitted {
  const _$AnswerSubmittedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MatchingQuestionEvent.answerSubmitted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'MatchingQuestionEvent.answerSubmitted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AnswerSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TestMode mode, TestMatchingQuestion question, bool isLast)
        started,
    required TResult Function(Map<int, int?> answer) answerSelected,
    required TResult Function() putOnHold,
    required TResult Function() answerSubmitted,
  }) {
    return answerSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TestMode mode, TestMatchingQuestion question, bool isLast)?
        started,
    TResult? Function(Map<int, int?> answer)? answerSelected,
    TResult? Function()? putOnHold,
    TResult? Function()? answerSubmitted,
  }) {
    return answerSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestMode mode, TestMatchingQuestion question, bool isLast)?
        started,
    TResult Function(Map<int, int?> answer)? answerSelected,
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
    required TResult Function(_AnswerSelected value) answerSelected,
    required TResult Function(_PutOnHold value) putOnHold,
    required TResult Function(_AnswerSubmitted value) answerSubmitted,
  }) {
    return answerSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AnswerSelected value)? answerSelected,
    TResult? Function(_PutOnHold value)? putOnHold,
    TResult? Function(_AnswerSubmitted value)? answerSubmitted,
  }) {
    return answerSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AnswerSelected value)? answerSelected,
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

abstract class _AnswerSubmitted implements MatchingQuestionEvent {
  const factory _AnswerSubmitted() = _$AnswerSubmittedImpl;
}

/// @nodoc
mixin _$MatchingQuestionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TestMode mode, TestMatchingQuestion question,
            bool isLast, Map<int, int?> selectedAnswers)
        inProgress,
    required TResult Function(TestMatchingQuestion question, bool isLast,
            Map<int, int?> selectedAnswers, Map<int, int?> correctAnswers)
        answered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TestMode mode, TestMatchingQuestion question, bool isLast,
            Map<int, int?> selectedAnswers)?
        inProgress,
    TResult? Function(TestMatchingQuestion question, bool isLast,
            Map<int, int?> selectedAnswers, Map<int, int?> correctAnswers)?
        answered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TestMode mode, TestMatchingQuestion question, bool isLast,
            Map<int, int?> selectedAnswers)?
        inProgress,
    TResult Function(TestMatchingQuestion question, bool isLast,
            Map<int, int?> selectedAnswers, Map<int, int?> correctAnswers)?
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
abstract class $MatchingQuestionStateCopyWith<$Res> {
  factory $MatchingQuestionStateCopyWith(MatchingQuestionState value,
          $Res Function(MatchingQuestionState) then) =
      _$MatchingQuestionStateCopyWithImpl<$Res, MatchingQuestionState>;
}

/// @nodoc
class _$MatchingQuestionStateCopyWithImpl<$Res,
        $Val extends MatchingQuestionState>
    implements $MatchingQuestionStateCopyWith<$Res> {
  _$MatchingQuestionStateCopyWithImpl(this._value, this._then);

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
    extends _$MatchingQuestionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl extends Initial with DiagnosticableTreeMixin {
  const _$InitialImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MatchingQuestionState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'MatchingQuestionState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TestMode mode, TestMatchingQuestion question,
            bool isLast, Map<int, int?> selectedAnswers)
        inProgress,
    required TResult Function(TestMatchingQuestion question, bool isLast,
            Map<int, int?> selectedAnswers, Map<int, int?> correctAnswers)
        answered,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TestMode mode, TestMatchingQuestion question, bool isLast,
            Map<int, int?> selectedAnswers)?
        inProgress,
    TResult? Function(TestMatchingQuestion question, bool isLast,
            Map<int, int?> selectedAnswers, Map<int, int?> correctAnswers)?
        answered,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TestMode mode, TestMatchingQuestion question, bool isLast,
            Map<int, int?> selectedAnswers)?
        inProgress,
    TResult Function(TestMatchingQuestion question, bool isLast,
            Map<int, int?> selectedAnswers, Map<int, int?> correctAnswers)?
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

abstract class Initial extends MatchingQuestionState {
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
      TestMatchingQuestion question,
      bool isLast,
      Map<int, int?> selectedAnswers});

  $TestMatchingQuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$InProgressImplCopyWithImpl<$Res>
    extends _$MatchingQuestionStateCopyWithImpl<$Res, _$InProgressImpl>
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
    Object? selectedAnswers = null,
  }) {
    return _then(_$InProgressImpl(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as TestMode,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as TestMatchingQuestion,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedAnswers: null == selectedAnswers
          ? _value._selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as Map<int, int?>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TestMatchingQuestionCopyWith<$Res> get question {
    return $TestMatchingQuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc

class _$InProgressImpl extends InProgress with DiagnosticableTreeMixin {
  const _$InProgressImpl(
      {required this.mode,
      required this.question,
      required this.isLast,
      required final Map<int, int?> selectedAnswers})
      : _selectedAnswers = selectedAnswers,
        super._();

  @override
  final TestMode mode;
  @override
  final TestMatchingQuestion question;
  @override
  final bool isLast;
  final Map<int, int?> _selectedAnswers;
  @override
  Map<int, int?> get selectedAnswers {
    if (_selectedAnswers is EqualUnmodifiableMapView) return _selectedAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedAnswers);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MatchingQuestionState.inProgress(mode: $mode, question: $question, isLast: $isLast, selectedAnswers: $selectedAnswers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MatchingQuestionState.inProgress'))
      ..add(DiagnosticsProperty('mode', mode))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('isLast', isLast))
      ..add(DiagnosticsProperty('selectedAnswers', selectedAnswers));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProgressImpl &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.isLast, isLast) || other.isLast == isLast) &&
            const DeepCollectionEquality()
                .equals(other._selectedAnswers, _selectedAnswers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode, question, isLast,
      const DeepCollectionEquality().hash(_selectedAnswers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InProgressImplCopyWith<_$InProgressImpl> get copyWith =>
      __$$InProgressImplCopyWithImpl<_$InProgressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TestMode mode, TestMatchingQuestion question,
            bool isLast, Map<int, int?> selectedAnswers)
        inProgress,
    required TResult Function(TestMatchingQuestion question, bool isLast,
            Map<int, int?> selectedAnswers, Map<int, int?> correctAnswers)
        answered,
  }) {
    return inProgress(mode, question, isLast, selectedAnswers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TestMode mode, TestMatchingQuestion question, bool isLast,
            Map<int, int?> selectedAnswers)?
        inProgress,
    TResult? Function(TestMatchingQuestion question, bool isLast,
            Map<int, int?> selectedAnswers, Map<int, int?> correctAnswers)?
        answered,
  }) {
    return inProgress?.call(mode, question, isLast, selectedAnswers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TestMode mode, TestMatchingQuestion question, bool isLast,
            Map<int, int?> selectedAnswers)?
        inProgress,
    TResult Function(TestMatchingQuestion question, bool isLast,
            Map<int, int?> selectedAnswers, Map<int, int?> correctAnswers)?
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

abstract class InProgress extends MatchingQuestionState {
  const factory InProgress(
      {required final TestMode mode,
      required final TestMatchingQuestion question,
      required final bool isLast,
      required final Map<int, int?> selectedAnswers}) = _$InProgressImpl;
  const InProgress._() : super._();

  TestMode get mode;
  TestMatchingQuestion get question;
  bool get isLast;
  Map<int, int?> get selectedAnswers;
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
      {TestMatchingQuestion question,
      bool isLast,
      Map<int, int?> selectedAnswers,
      Map<int, int?> correctAnswers});

  $TestMatchingQuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$AnsweredImplCopyWithImpl<$Res>
    extends _$MatchingQuestionStateCopyWithImpl<$Res, _$AnsweredImpl>
    implements _$$AnsweredImplCopyWith<$Res> {
  __$$AnsweredImplCopyWithImpl(
      _$AnsweredImpl _value, $Res Function(_$AnsweredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? isLast = null,
    Object? selectedAnswers = null,
    Object? correctAnswers = null,
  }) {
    return _then(_$AnsweredImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as TestMatchingQuestion,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedAnswers: null == selectedAnswers
          ? _value._selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as Map<int, int?>,
      correctAnswers: null == correctAnswers
          ? _value._correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as Map<int, int?>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TestMatchingQuestionCopyWith<$Res> get question {
    return $TestMatchingQuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc

class _$AnsweredImpl extends Answered with DiagnosticableTreeMixin {
  const _$AnsweredImpl(
      {required this.question,
      required this.isLast,
      required final Map<int, int?> selectedAnswers,
      required final Map<int, int?> correctAnswers})
      : _selectedAnswers = selectedAnswers,
        _correctAnswers = correctAnswers,
        super._();

  @override
  final TestMatchingQuestion question;
  @override
  final bool isLast;
  final Map<int, int?> _selectedAnswers;
  @override
  Map<int, int?> get selectedAnswers {
    if (_selectedAnswers is EqualUnmodifiableMapView) return _selectedAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedAnswers);
  }

  final Map<int, int?> _correctAnswers;
  @override
  Map<int, int?> get correctAnswers {
    if (_correctAnswers is EqualUnmodifiableMapView) return _correctAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_correctAnswers);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MatchingQuestionState.answered(question: $question, isLast: $isLast, selectedAnswers: $selectedAnswers, correctAnswers: $correctAnswers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MatchingQuestionState.answered'))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('isLast', isLast))
      ..add(DiagnosticsProperty('selectedAnswers', selectedAnswers))
      ..add(DiagnosticsProperty('correctAnswers', correctAnswers));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnsweredImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.isLast, isLast) || other.isLast == isLast) &&
            const DeepCollectionEquality()
                .equals(other._selectedAnswers, _selectedAnswers) &&
            const DeepCollectionEquality()
                .equals(other._correctAnswers, _correctAnswers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      question,
      isLast,
      const DeepCollectionEquality().hash(_selectedAnswers),
      const DeepCollectionEquality().hash(_correctAnswers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnsweredImplCopyWith<_$AnsweredImpl> get copyWith =>
      __$$AnsweredImplCopyWithImpl<_$AnsweredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TestMode mode, TestMatchingQuestion question,
            bool isLast, Map<int, int?> selectedAnswers)
        inProgress,
    required TResult Function(TestMatchingQuestion question, bool isLast,
            Map<int, int?> selectedAnswers, Map<int, int?> correctAnswers)
        answered,
  }) {
    return answered(question, isLast, selectedAnswers, correctAnswers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TestMode mode, TestMatchingQuestion question, bool isLast,
            Map<int, int?> selectedAnswers)?
        inProgress,
    TResult? Function(TestMatchingQuestion question, bool isLast,
            Map<int, int?> selectedAnswers, Map<int, int?> correctAnswers)?
        answered,
  }) {
    return answered?.call(question, isLast, selectedAnswers, correctAnswers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TestMode mode, TestMatchingQuestion question, bool isLast,
            Map<int, int?> selectedAnswers)?
        inProgress,
    TResult Function(TestMatchingQuestion question, bool isLast,
            Map<int, int?> selectedAnswers, Map<int, int?> correctAnswers)?
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

abstract class Answered extends MatchingQuestionState {
  const factory Answered(
      {required final TestMatchingQuestion question,
      required final bool isLast,
      required final Map<int, int?> selectedAnswers,
      required final Map<int, int?> correctAnswers}) = _$AnsweredImpl;
  const Answered._() : super._();

  TestMatchingQuestion get question;
  bool get isLast;
  Map<int, int?> get selectedAnswers;
  Map<int, int?> get correctAnswers;
  @JsonKey(ignore: true)
  _$$AnsweredImplCopyWith<_$AnsweredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
