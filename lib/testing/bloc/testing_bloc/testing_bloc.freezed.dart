// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'testing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TestingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestMode mode) started,
    required TResult Function(int index) selected,
    required TResult Function() selectNextQuestion,
    required TResult Function(bool confirm) gotFinishConfirmationAnswer,
    required TResult Function() finishRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestMode mode)? started,
    TResult? Function(int index)? selected,
    TResult? Function()? selectNextQuestion,
    TResult? Function(bool confirm)? gotFinishConfirmationAnswer,
    TResult? Function()? finishRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestMode mode)? started,
    TResult Function(int index)? selected,
    TResult Function()? selectNextQuestion,
    TResult Function(bool confirm)? gotFinishConfirmationAnswer,
    TResult Function()? finishRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Selected value) selected,
    required TResult Function(_SelectNextQuestion value) selectNextQuestion,
    required TResult Function(_GotFinishConfirmationAnswer value)
        gotFinishConfirmationAnswer,
    required TResult Function(_FinishRequested value) finishRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult? Function(_GotFinishConfirmationAnswer value)?
        gotFinishConfirmationAnswer,
    TResult? Function(_FinishRequested value)? finishRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? selected,
    TResult Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult Function(_GotFinishConfirmationAnswer value)?
        gotFinishConfirmationAnswer,
    TResult Function(_FinishRequested value)? finishRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestingEventCopyWith<$Res> {
  factory $TestingEventCopyWith(
          TestingEvent value, $Res Function(TestingEvent) then) =
      _$TestingEventCopyWithImpl<$Res, TestingEvent>;
}

/// @nodoc
class _$TestingEventCopyWithImpl<$Res, $Val extends TestingEvent>
    implements $TestingEventCopyWith<$Res> {
  _$TestingEventCopyWithImpl(this._value, this._then);

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
  $Res call({TestMode mode});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$TestingEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$StartedImpl(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as TestMode,
    ));
  }
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl({required this.mode});

  @override
  final TestMode mode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestingEvent.started(mode: $mode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestingEvent.started'))
      ..add(DiagnosticsProperty('mode', mode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestMode mode) started,
    required TResult Function(int index) selected,
    required TResult Function() selectNextQuestion,
    required TResult Function(bool confirm) gotFinishConfirmationAnswer,
    required TResult Function() finishRequested,
  }) {
    return started(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestMode mode)? started,
    TResult? Function(int index)? selected,
    TResult? Function()? selectNextQuestion,
    TResult? Function(bool confirm)? gotFinishConfirmationAnswer,
    TResult? Function()? finishRequested,
  }) {
    return started?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestMode mode)? started,
    TResult Function(int index)? selected,
    TResult Function()? selectNextQuestion,
    TResult Function(bool confirm)? gotFinishConfirmationAnswer,
    TResult Function()? finishRequested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Selected value) selected,
    required TResult Function(_SelectNextQuestion value) selectNextQuestion,
    required TResult Function(_GotFinishConfirmationAnswer value)
        gotFinishConfirmationAnswer,
    required TResult Function(_FinishRequested value) finishRequested,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult? Function(_GotFinishConfirmationAnswer value)?
        gotFinishConfirmationAnswer,
    TResult? Function(_FinishRequested value)? finishRequested,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? selected,
    TResult Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult Function(_GotFinishConfirmationAnswer value)?
        gotFinishConfirmationAnswer,
    TResult Function(_FinishRequested value)? finishRequested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TestingEvent {
  const factory _Started({required final TestMode mode}) = _$StartedImpl;

  TestMode get mode;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectedImplCopyWith<$Res> {
  factory _$$SelectedImplCopyWith(
          _$SelectedImpl value, $Res Function(_$SelectedImpl) then) =
      __$$SelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SelectedImplCopyWithImpl<$Res>
    extends _$TestingEventCopyWithImpl<$Res, _$SelectedImpl>
    implements _$$SelectedImplCopyWith<$Res> {
  __$$SelectedImplCopyWithImpl(
      _$SelectedImpl _value, $Res Function(_$SelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$SelectedImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectedImpl with DiagnosticableTreeMixin implements _Selected {
  const _$SelectedImpl({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestingEvent.selected(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestingEvent.selected'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedImplCopyWith<_$SelectedImpl> get copyWith =>
      __$$SelectedImplCopyWithImpl<_$SelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestMode mode) started,
    required TResult Function(int index) selected,
    required TResult Function() selectNextQuestion,
    required TResult Function(bool confirm) gotFinishConfirmationAnswer,
    required TResult Function() finishRequested,
  }) {
    return selected(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestMode mode)? started,
    TResult? Function(int index)? selected,
    TResult? Function()? selectNextQuestion,
    TResult? Function(bool confirm)? gotFinishConfirmationAnswer,
    TResult? Function()? finishRequested,
  }) {
    return selected?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestMode mode)? started,
    TResult Function(int index)? selected,
    TResult Function()? selectNextQuestion,
    TResult Function(bool confirm)? gotFinishConfirmationAnswer,
    TResult Function()? finishRequested,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Selected value) selected,
    required TResult Function(_SelectNextQuestion value) selectNextQuestion,
    required TResult Function(_GotFinishConfirmationAnswer value)
        gotFinishConfirmationAnswer,
    required TResult Function(_FinishRequested value) finishRequested,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult? Function(_GotFinishConfirmationAnswer value)?
        gotFinishConfirmationAnswer,
    TResult? Function(_FinishRequested value)? finishRequested,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? selected,
    TResult Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult Function(_GotFinishConfirmationAnswer value)?
        gotFinishConfirmationAnswer,
    TResult Function(_FinishRequested value)? finishRequested,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class _Selected implements TestingEvent {
  const factory _Selected({required final int index}) = _$SelectedImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$SelectedImplCopyWith<_$SelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectNextQuestionImplCopyWith<$Res> {
  factory _$$SelectNextQuestionImplCopyWith(_$SelectNextQuestionImpl value,
          $Res Function(_$SelectNextQuestionImpl) then) =
      __$$SelectNextQuestionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectNextQuestionImplCopyWithImpl<$Res>
    extends _$TestingEventCopyWithImpl<$Res, _$SelectNextQuestionImpl>
    implements _$$SelectNextQuestionImplCopyWith<$Res> {
  __$$SelectNextQuestionImplCopyWithImpl(_$SelectNextQuestionImpl _value,
      $Res Function(_$SelectNextQuestionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SelectNextQuestionImpl
    with DiagnosticableTreeMixin
    implements _SelectNextQuestion {
  const _$SelectNextQuestionImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestingEvent.selectNextQuestion()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'TestingEvent.selectNextQuestion'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SelectNextQuestionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestMode mode) started,
    required TResult Function(int index) selected,
    required TResult Function() selectNextQuestion,
    required TResult Function(bool confirm) gotFinishConfirmationAnswer,
    required TResult Function() finishRequested,
  }) {
    return selectNextQuestion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestMode mode)? started,
    TResult? Function(int index)? selected,
    TResult? Function()? selectNextQuestion,
    TResult? Function(bool confirm)? gotFinishConfirmationAnswer,
    TResult? Function()? finishRequested,
  }) {
    return selectNextQuestion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestMode mode)? started,
    TResult Function(int index)? selected,
    TResult Function()? selectNextQuestion,
    TResult Function(bool confirm)? gotFinishConfirmationAnswer,
    TResult Function()? finishRequested,
    required TResult orElse(),
  }) {
    if (selectNextQuestion != null) {
      return selectNextQuestion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Selected value) selected,
    required TResult Function(_SelectNextQuestion value) selectNextQuestion,
    required TResult Function(_GotFinishConfirmationAnswer value)
        gotFinishConfirmationAnswer,
    required TResult Function(_FinishRequested value) finishRequested,
  }) {
    return selectNextQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult? Function(_GotFinishConfirmationAnswer value)?
        gotFinishConfirmationAnswer,
    TResult? Function(_FinishRequested value)? finishRequested,
  }) {
    return selectNextQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? selected,
    TResult Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult Function(_GotFinishConfirmationAnswer value)?
        gotFinishConfirmationAnswer,
    TResult Function(_FinishRequested value)? finishRequested,
    required TResult orElse(),
  }) {
    if (selectNextQuestion != null) {
      return selectNextQuestion(this);
    }
    return orElse();
  }
}

abstract class _SelectNextQuestion implements TestingEvent {
  const factory _SelectNextQuestion() = _$SelectNextQuestionImpl;
}

/// @nodoc
abstract class _$$GotFinishConfirmationAnswerImplCopyWith<$Res> {
  factory _$$GotFinishConfirmationAnswerImplCopyWith(
          _$GotFinishConfirmationAnswerImpl value,
          $Res Function(_$GotFinishConfirmationAnswerImpl) then) =
      __$$GotFinishConfirmationAnswerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool confirm});
}

/// @nodoc
class __$$GotFinishConfirmationAnswerImplCopyWithImpl<$Res>
    extends _$TestingEventCopyWithImpl<$Res, _$GotFinishConfirmationAnswerImpl>
    implements _$$GotFinishConfirmationAnswerImplCopyWith<$Res> {
  __$$GotFinishConfirmationAnswerImplCopyWithImpl(
      _$GotFinishConfirmationAnswerImpl _value,
      $Res Function(_$GotFinishConfirmationAnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirm = null,
  }) {
    return _then(_$GotFinishConfirmationAnswerImpl(
      confirm: null == confirm
          ? _value.confirm
          : confirm // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GotFinishConfirmationAnswerImpl
    with DiagnosticableTreeMixin
    implements _GotFinishConfirmationAnswer {
  const _$GotFinishConfirmationAnswerImpl({required this.confirm});

  @override
  final bool confirm;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestingEvent.gotFinishConfirmationAnswer(confirm: $confirm)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'TestingEvent.gotFinishConfirmationAnswer'))
      ..add(DiagnosticsProperty('confirm', confirm));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotFinishConfirmationAnswerImpl &&
            (identical(other.confirm, confirm) || other.confirm == confirm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GotFinishConfirmationAnswerImplCopyWith<_$GotFinishConfirmationAnswerImpl>
      get copyWith => __$$GotFinishConfirmationAnswerImplCopyWithImpl<
          _$GotFinishConfirmationAnswerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestMode mode) started,
    required TResult Function(int index) selected,
    required TResult Function() selectNextQuestion,
    required TResult Function(bool confirm) gotFinishConfirmationAnswer,
    required TResult Function() finishRequested,
  }) {
    return gotFinishConfirmationAnswer(confirm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestMode mode)? started,
    TResult? Function(int index)? selected,
    TResult? Function()? selectNextQuestion,
    TResult? Function(bool confirm)? gotFinishConfirmationAnswer,
    TResult? Function()? finishRequested,
  }) {
    return gotFinishConfirmationAnswer?.call(confirm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestMode mode)? started,
    TResult Function(int index)? selected,
    TResult Function()? selectNextQuestion,
    TResult Function(bool confirm)? gotFinishConfirmationAnswer,
    TResult Function()? finishRequested,
    required TResult orElse(),
  }) {
    if (gotFinishConfirmationAnswer != null) {
      return gotFinishConfirmationAnswer(confirm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Selected value) selected,
    required TResult Function(_SelectNextQuestion value) selectNextQuestion,
    required TResult Function(_GotFinishConfirmationAnswer value)
        gotFinishConfirmationAnswer,
    required TResult Function(_FinishRequested value) finishRequested,
  }) {
    return gotFinishConfirmationAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult? Function(_GotFinishConfirmationAnswer value)?
        gotFinishConfirmationAnswer,
    TResult? Function(_FinishRequested value)? finishRequested,
  }) {
    return gotFinishConfirmationAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? selected,
    TResult Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult Function(_GotFinishConfirmationAnswer value)?
        gotFinishConfirmationAnswer,
    TResult Function(_FinishRequested value)? finishRequested,
    required TResult orElse(),
  }) {
    if (gotFinishConfirmationAnswer != null) {
      return gotFinishConfirmationAnswer(this);
    }
    return orElse();
  }
}

abstract class _GotFinishConfirmationAnswer implements TestingEvent {
  const factory _GotFinishConfirmationAnswer({required final bool confirm}) =
      _$GotFinishConfirmationAnswerImpl;

  bool get confirm;
  @JsonKey(ignore: true)
  _$$GotFinishConfirmationAnswerImplCopyWith<_$GotFinishConfirmationAnswerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinishRequestedImplCopyWith<$Res> {
  factory _$$FinishRequestedImplCopyWith(_$FinishRequestedImpl value,
          $Res Function(_$FinishRequestedImpl) then) =
      __$$FinishRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FinishRequestedImplCopyWithImpl<$Res>
    extends _$TestingEventCopyWithImpl<$Res, _$FinishRequestedImpl>
    implements _$$FinishRequestedImplCopyWith<$Res> {
  __$$FinishRequestedImplCopyWithImpl(
      _$FinishRequestedImpl _value, $Res Function(_$FinishRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FinishRequestedImpl
    with DiagnosticableTreeMixin
    implements _FinishRequested {
  const _$FinishRequestedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestingEvent.finishRequested()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TestingEvent.finishRequested'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FinishRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestMode mode) started,
    required TResult Function(int index) selected,
    required TResult Function() selectNextQuestion,
    required TResult Function(bool confirm) gotFinishConfirmationAnswer,
    required TResult Function() finishRequested,
  }) {
    return finishRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestMode mode)? started,
    TResult? Function(int index)? selected,
    TResult? Function()? selectNextQuestion,
    TResult? Function(bool confirm)? gotFinishConfirmationAnswer,
    TResult? Function()? finishRequested,
  }) {
    return finishRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestMode mode)? started,
    TResult Function(int index)? selected,
    TResult Function()? selectNextQuestion,
    TResult Function(bool confirm)? gotFinishConfirmationAnswer,
    TResult Function()? finishRequested,
    required TResult orElse(),
  }) {
    if (finishRequested != null) {
      return finishRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Selected value) selected,
    required TResult Function(_SelectNextQuestion value) selectNextQuestion,
    required TResult Function(_GotFinishConfirmationAnswer value)
        gotFinishConfirmationAnswer,
    required TResult Function(_FinishRequested value) finishRequested,
  }) {
    return finishRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult? Function(_GotFinishConfirmationAnswer value)?
        gotFinishConfirmationAnswer,
    TResult? Function(_FinishRequested value)? finishRequested,
  }) {
    return finishRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? selected,
    TResult Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult Function(_GotFinishConfirmationAnswer value)?
        gotFinishConfirmationAnswer,
    TResult Function(_FinishRequested value)? finishRequested,
    required TResult orElse(),
  }) {
    if (finishRequested != null) {
      return finishRequested(this);
    }
    return orElse();
  }
}

abstract class _FinishRequested implements TestingEvent {
  const factory _FinishRequested() = _$FinishRequestedImpl;
}

/// @nodoc
mixin _$TestingState {
  TestMode get mode => throw _privateConstructorUsedError;
  List<TestQuestion> get questions => throw _privateConstructorUsedError;
  int? get selectedIndex => throw _privateConstructorUsedError;
  bool get isFinished => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get needFinishConfirmation => throw _privateConstructorUsedError;
  bool get isUpdateNeeded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestingStateCopyWith<TestingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestingStateCopyWith<$Res> {
  factory $TestingStateCopyWith(
          TestingState value, $Res Function(TestingState) then) =
      _$TestingStateCopyWithImpl<$Res, TestingState>;
  @useResult
  $Res call(
      {TestMode mode,
      List<TestQuestion> questions,
      int? selectedIndex,
      bool isFinished,
      bool isLoading,
      String? errorMessage,
      bool needFinishConfirmation,
      bool isUpdateNeeded});
}

/// @nodoc
class _$TestingStateCopyWithImpl<$Res, $Val extends TestingState>
    implements $TestingStateCopyWith<$Res> {
  _$TestingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? questions = null,
    Object? selectedIndex = freezed,
    Object? isFinished = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? needFinishConfirmation = null,
    Object? isUpdateNeeded = null,
  }) {
    return _then(_value.copyWith(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as TestMode,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<TestQuestion>,
      selectedIndex: freezed == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      needFinishConfirmation: null == needFinishConfirmation
          ? _value.needFinishConfirmation
          : needFinishConfirmation // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdateNeeded: null == isUpdateNeeded
          ? _value.isUpdateNeeded
          : isUpdateNeeded // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestStateImplCopyWith<$Res>
    implements $TestingStateCopyWith<$Res> {
  factory _$$TestStateImplCopyWith(
          _$TestStateImpl value, $Res Function(_$TestStateImpl) then) =
      __$$TestStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TestMode mode,
      List<TestQuestion> questions,
      int? selectedIndex,
      bool isFinished,
      bool isLoading,
      String? errorMessage,
      bool needFinishConfirmation,
      bool isUpdateNeeded});
}

/// @nodoc
class __$$TestStateImplCopyWithImpl<$Res>
    extends _$TestingStateCopyWithImpl<$Res, _$TestStateImpl>
    implements _$$TestStateImplCopyWith<$Res> {
  __$$TestStateImplCopyWithImpl(
      _$TestStateImpl _value, $Res Function(_$TestStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? questions = null,
    Object? selectedIndex = freezed,
    Object? isFinished = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? needFinishConfirmation = null,
    Object? isUpdateNeeded = null,
  }) {
    return _then(_$TestStateImpl(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as TestMode,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<TestQuestion>,
      selectedIndex: freezed == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      needFinishConfirmation: null == needFinishConfirmation
          ? _value.needFinishConfirmation
          : needFinishConfirmation // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdateNeeded: null == isUpdateNeeded
          ? _value.isUpdateNeeded
          : isUpdateNeeded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TestStateImpl with DiagnosticableTreeMixin implements _TestState {
  const _$TestStateImpl(
      {required this.mode,
      final List<TestQuestion> questions = const [],
      this.selectedIndex = null,
      this.isFinished = false,
      this.isLoading = true,
      this.errorMessage = null,
      this.needFinishConfirmation = false,
      this.isUpdateNeeded = false})
      : _questions = questions;

  @override
  final TestMode mode;
  final List<TestQuestion> _questions;
  @override
  @JsonKey()
  List<TestQuestion> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  @JsonKey()
  final int? selectedIndex;
  @override
  @JsonKey()
  final bool isFinished;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String? errorMessage;
  @override
  @JsonKey()
  final bool needFinishConfirmation;
  @override
  @JsonKey()
  final bool isUpdateNeeded;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestingState(mode: $mode, questions: $questions, selectedIndex: $selectedIndex, isFinished: $isFinished, isLoading: $isLoading, errorMessage: $errorMessage, needFinishConfirmation: $needFinishConfirmation, isUpdateNeeded: $isUpdateNeeded)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestingState'))
      ..add(DiagnosticsProperty('mode', mode))
      ..add(DiagnosticsProperty('questions', questions))
      ..add(DiagnosticsProperty('selectedIndex', selectedIndex))
      ..add(DiagnosticsProperty('isFinished', isFinished))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(
          DiagnosticsProperty('needFinishConfirmation', needFinishConfirmation))
      ..add(DiagnosticsProperty('isUpdateNeeded', isUpdateNeeded));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestStateImpl &&
            (identical(other.mode, mode) || other.mode == mode) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.needFinishConfirmation, needFinishConfirmation) ||
                other.needFinishConfirmation == needFinishConfirmation) &&
            (identical(other.isUpdateNeeded, isUpdateNeeded) ||
                other.isUpdateNeeded == isUpdateNeeded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      mode,
      const DeepCollectionEquality().hash(_questions),
      selectedIndex,
      isFinished,
      isLoading,
      errorMessage,
      needFinishConfirmation,
      isUpdateNeeded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestStateImplCopyWith<_$TestStateImpl> get copyWith =>
      __$$TestStateImplCopyWithImpl<_$TestStateImpl>(this, _$identity);
}

abstract class _TestState implements TestingState {
  const factory _TestState(
      {required final TestMode mode,
      final List<TestQuestion> questions,
      final int? selectedIndex,
      final bool isFinished,
      final bool isLoading,
      final String? errorMessage,
      final bool needFinishConfirmation,
      final bool isUpdateNeeded}) = _$TestStateImpl;

  @override
  TestMode get mode;
  @override
  List<TestQuestion> get questions;
  @override
  int? get selectedIndex;
  @override
  bool get isFinished;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  bool get needFinishConfirmation;
  @override
  bool get isUpdateNeeded;
  @override
  @JsonKey(ignore: true)
  _$$TestStateImplCopyWith<_$TestStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
