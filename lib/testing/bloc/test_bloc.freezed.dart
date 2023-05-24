// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestMode mode) started,
    required TResult Function(int index) selected,
    required TResult Function() selectNextQuestion,
    required TResult Function(Set<int> answers) answersSelected,
    required TResult Function() finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestMode mode)? started,
    TResult? Function(int index)? selected,
    TResult? Function()? selectNextQuestion,
    TResult? Function(Set<int> answers)? answersSelected,
    TResult? Function()? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestMode mode)? started,
    TResult Function(int index)? selected,
    TResult Function()? selectNextQuestion,
    TResult Function(Set<int> answers)? answersSelected,
    TResult Function()? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Selected value) selected,
    required TResult Function(_SelectNextQuestion value) selectNextQuestion,
    required TResult Function(_AnswersSelected value) answersSelected,
    required TResult Function(_Finished value) finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult? Function(_AnswersSelected value)? answersSelected,
    TResult? Function(_Finished value)? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? selected,
    TResult Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult Function(_AnswersSelected value)? answersSelected,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestEventCopyWith<$Res> {
  factory $TestEventCopyWith(TestEvent value, $Res Function(TestEvent) then) =
      _$TestEventCopyWithImpl<$Res, TestEvent>;
}

/// @nodoc
class _$TestEventCopyWithImpl<$Res, $Val extends TestEvent>
    implements $TestEventCopyWith<$Res> {
  _$TestEventCopyWithImpl(this._value, this._then);

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
  $Res call({TestMode mode});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$_Started(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as TestMode,
    ));
  }
}

/// @nodoc

class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started({required this.mode});

  @override
  final TestMode mode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.started(mode: $mode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestEvent.started'))
      ..add(DiagnosticsProperty('mode', mode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestMode mode) started,
    required TResult Function(int index) selected,
    required TResult Function() selectNextQuestion,
    required TResult Function(Set<int> answers) answersSelected,
    required TResult Function() finished,
  }) {
    return started(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestMode mode)? started,
    TResult? Function(int index)? selected,
    TResult? Function()? selectNextQuestion,
    TResult? Function(Set<int> answers)? answersSelected,
    TResult? Function()? finished,
  }) {
    return started?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestMode mode)? started,
    TResult Function(int index)? selected,
    TResult Function()? selectNextQuestion,
    TResult Function(Set<int> answers)? answersSelected,
    TResult Function()? finished,
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
    required TResult Function(_AnswersSelected value) answersSelected,
    required TResult Function(_Finished value) finished,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult? Function(_AnswersSelected value)? answersSelected,
    TResult? Function(_Finished value)? finished,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? selected,
    TResult Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult Function(_AnswersSelected value)? answersSelected,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TestEvent {
  const factory _Started({required final TestMode mode}) = _$_Started;

  TestMode get mode;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectedCopyWith<$Res> {
  factory _$$_SelectedCopyWith(
          _$_Selected value, $Res Function(_$_Selected) then) =
      __$$_SelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_SelectedCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$_Selected>
    implements _$$_SelectedCopyWith<$Res> {
  __$$_SelectedCopyWithImpl(
      _$_Selected _value, $Res Function(_$_Selected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_Selected(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Selected with DiagnosticableTreeMixin implements _Selected {
  const _$_Selected({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.selected(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestEvent.selected'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Selected &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedCopyWith<_$_Selected> get copyWith =>
      __$$_SelectedCopyWithImpl<_$_Selected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestMode mode) started,
    required TResult Function(int index) selected,
    required TResult Function() selectNextQuestion,
    required TResult Function(Set<int> answers) answersSelected,
    required TResult Function() finished,
  }) {
    return selected(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestMode mode)? started,
    TResult? Function(int index)? selected,
    TResult? Function()? selectNextQuestion,
    TResult? Function(Set<int> answers)? answersSelected,
    TResult? Function()? finished,
  }) {
    return selected?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestMode mode)? started,
    TResult Function(int index)? selected,
    TResult Function()? selectNextQuestion,
    TResult Function(Set<int> answers)? answersSelected,
    TResult Function()? finished,
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
    required TResult Function(_AnswersSelected value) answersSelected,
    required TResult Function(_Finished value) finished,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult? Function(_AnswersSelected value)? answersSelected,
    TResult? Function(_Finished value)? finished,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? selected,
    TResult Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult Function(_AnswersSelected value)? answersSelected,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class _Selected implements TestEvent {
  const factory _Selected({required final int index}) = _$_Selected;

  int get index;
  @JsonKey(ignore: true)
  _$$_SelectedCopyWith<_$_Selected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectNextQuestionCopyWith<$Res> {
  factory _$$_SelectNextQuestionCopyWith(_$_SelectNextQuestion value,
          $Res Function(_$_SelectNextQuestion) then) =
      __$$_SelectNextQuestionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SelectNextQuestionCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$_SelectNextQuestion>
    implements _$$_SelectNextQuestionCopyWith<$Res> {
  __$$_SelectNextQuestionCopyWithImpl(
      _$_SelectNextQuestion _value, $Res Function(_$_SelectNextQuestion) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SelectNextQuestion
    with DiagnosticableTreeMixin
    implements _SelectNextQuestion {
  const _$_SelectNextQuestion();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.selectNextQuestion()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TestEvent.selectNextQuestion'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SelectNextQuestion);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestMode mode) started,
    required TResult Function(int index) selected,
    required TResult Function() selectNextQuestion,
    required TResult Function(Set<int> answers) answersSelected,
    required TResult Function() finished,
  }) {
    return selectNextQuestion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestMode mode)? started,
    TResult? Function(int index)? selected,
    TResult? Function()? selectNextQuestion,
    TResult? Function(Set<int> answers)? answersSelected,
    TResult? Function()? finished,
  }) {
    return selectNextQuestion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestMode mode)? started,
    TResult Function(int index)? selected,
    TResult Function()? selectNextQuestion,
    TResult Function(Set<int> answers)? answersSelected,
    TResult Function()? finished,
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
    required TResult Function(_AnswersSelected value) answersSelected,
    required TResult Function(_Finished value) finished,
  }) {
    return selectNextQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult? Function(_AnswersSelected value)? answersSelected,
    TResult? Function(_Finished value)? finished,
  }) {
    return selectNextQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? selected,
    TResult Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult Function(_AnswersSelected value)? answersSelected,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (selectNextQuestion != null) {
      return selectNextQuestion(this);
    }
    return orElse();
  }
}

abstract class _SelectNextQuestion implements TestEvent {
  const factory _SelectNextQuestion() = _$_SelectNextQuestion;
}

/// @nodoc
abstract class _$$_AnswersSelectedCopyWith<$Res> {
  factory _$$_AnswersSelectedCopyWith(
          _$_AnswersSelected value, $Res Function(_$_AnswersSelected) then) =
      __$$_AnswersSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({Set<int> answers});
}

/// @nodoc
class __$$_AnswersSelectedCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$_AnswersSelected>
    implements _$$_AnswersSelectedCopyWith<$Res> {
  __$$_AnswersSelectedCopyWithImpl(
      _$_AnswersSelected _value, $Res Function(_$_AnswersSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answers = null,
  }) {
    return _then(_$_AnswersSelected(
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as Set<int>,
    ));
  }
}

/// @nodoc

class _$_AnswersSelected
    with DiagnosticableTreeMixin
    implements _AnswersSelected {
  const _$_AnswersSelected({required final Set<int> answers})
      : _answers = answers;

  final Set<int> _answers;
  @override
  Set<int> get answers {
    if (_answers is EqualUnmodifiableSetView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_answers);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.answersSelected(answers: $answers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestEvent.answersSelected'))
      ..add(DiagnosticsProperty('answers', answers));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswersSelected &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswersSelectedCopyWith<_$_AnswersSelected> get copyWith =>
      __$$_AnswersSelectedCopyWithImpl<_$_AnswersSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestMode mode) started,
    required TResult Function(int index) selected,
    required TResult Function() selectNextQuestion,
    required TResult Function(Set<int> answers) answersSelected,
    required TResult Function() finished,
  }) {
    return answersSelected(answers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestMode mode)? started,
    TResult? Function(int index)? selected,
    TResult? Function()? selectNextQuestion,
    TResult? Function(Set<int> answers)? answersSelected,
    TResult? Function()? finished,
  }) {
    return answersSelected?.call(answers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestMode mode)? started,
    TResult Function(int index)? selected,
    TResult Function()? selectNextQuestion,
    TResult Function(Set<int> answers)? answersSelected,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (answersSelected != null) {
      return answersSelected(answers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Selected value) selected,
    required TResult Function(_SelectNextQuestion value) selectNextQuestion,
    required TResult Function(_AnswersSelected value) answersSelected,
    required TResult Function(_Finished value) finished,
  }) {
    return answersSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult? Function(_AnswersSelected value)? answersSelected,
    TResult? Function(_Finished value)? finished,
  }) {
    return answersSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? selected,
    TResult Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult Function(_AnswersSelected value)? answersSelected,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (answersSelected != null) {
      return answersSelected(this);
    }
    return orElse();
  }
}

abstract class _AnswersSelected implements TestEvent {
  const factory _AnswersSelected({required final Set<int> answers}) =
      _$_AnswersSelected;

  Set<int> get answers;
  @JsonKey(ignore: true)
  _$$_AnswersSelectedCopyWith<_$_AnswersSelected> get copyWith =>
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
    extends _$TestEventCopyWithImpl<$Res, _$_Finished>
    implements _$$_FinishedCopyWith<$Res> {
  __$$_FinishedCopyWithImpl(
      _$_Finished _value, $Res Function(_$_Finished) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Finished with DiagnosticableTreeMixin implements _Finished {
  const _$_Finished();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.finished()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TestEvent.finished'));
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
    required TResult Function(TestMode mode) started,
    required TResult Function(int index) selected,
    required TResult Function() selectNextQuestion,
    required TResult Function(Set<int> answers) answersSelected,
    required TResult Function() finished,
  }) {
    return finished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestMode mode)? started,
    TResult? Function(int index)? selected,
    TResult? Function()? selectNextQuestion,
    TResult? Function(Set<int> answers)? answersSelected,
    TResult? Function()? finished,
  }) {
    return finished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestMode mode)? started,
    TResult Function(int index)? selected,
    TResult Function()? selectNextQuestion,
    TResult Function(Set<int> answers)? answersSelected,
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
    required TResult Function(_Started value) started,
    required TResult Function(_Selected value) selected,
    required TResult Function(_SelectNextQuestion value) selectNextQuestion,
    required TResult Function(_AnswersSelected value) answersSelected,
    required TResult Function(_Finished value) finished,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult? Function(_AnswersSelected value)? answersSelected,
    TResult? Function(_Finished value)? finished,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? selected,
    TResult Function(_SelectNextQuestion value)? selectNextQuestion,
    TResult Function(_AnswersSelected value)? answersSelected,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class _Finished implements TestEvent {
  const factory _Finished() = _$_Finished;
}

/// @nodoc
mixin _$TestState {
  TestMode get mode => throw _privateConstructorUsedError;
  List<TestQuestion> get questions => throw _privateConstructorUsedError;
  int? get selectedIndex => throw _privateConstructorUsedError;
  Set<int> get selectedAnswers => throw _privateConstructorUsedError;
  bool get isFinished => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestStateCopyWith<TestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestStateCopyWith<$Res> {
  factory $TestStateCopyWith(TestState value, $Res Function(TestState) then) =
      _$TestStateCopyWithImpl<$Res, TestState>;
  @useResult
  $Res call(
      {TestMode mode,
      List<TestQuestion> questions,
      int? selectedIndex,
      Set<int> selectedAnswers,
      bool isFinished,
      bool isLoading,
      String? errorMessage});
}

/// @nodoc
class _$TestStateCopyWithImpl<$Res, $Val extends TestState>
    implements $TestStateCopyWith<$Res> {
  _$TestStateCopyWithImpl(this._value, this._then);

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
    Object? selectedAnswers = null,
    Object? isFinished = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
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
      selectedAnswers: null == selectedAnswers
          ? _value.selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as Set<int>,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TestStateCopyWith<$Res> implements $TestStateCopyWith<$Res> {
  factory _$$_TestStateCopyWith(
          _$_TestState value, $Res Function(_$_TestState) then) =
      __$$_TestStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TestMode mode,
      List<TestQuestion> questions,
      int? selectedIndex,
      Set<int> selectedAnswers,
      bool isFinished,
      bool isLoading,
      String? errorMessage});
}

/// @nodoc
class __$$_TestStateCopyWithImpl<$Res>
    extends _$TestStateCopyWithImpl<$Res, _$_TestState>
    implements _$$_TestStateCopyWith<$Res> {
  __$$_TestStateCopyWithImpl(
      _$_TestState _value, $Res Function(_$_TestState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? questions = null,
    Object? selectedIndex = freezed,
    Object? selectedAnswers = null,
    Object? isFinished = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_TestState(
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
      selectedAnswers: null == selectedAnswers
          ? _value._selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as Set<int>,
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
    ));
  }
}

/// @nodoc

class _$_TestState with DiagnosticableTreeMixin implements _TestState {
  const _$_TestState(
      {required this.mode,
      final List<TestQuestion> questions = const [],
      this.selectedIndex = null,
      final Set<int> selectedAnswers = const {},
      this.isFinished = false,
      this.isLoading = true,
      this.errorMessage = null})
      : _questions = questions,
        _selectedAnswers = selectedAnswers;

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
  final Set<int> _selectedAnswers;
  @override
  @JsonKey()
  Set<int> get selectedAnswers {
    if (_selectedAnswers is EqualUnmodifiableSetView) return _selectedAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedAnswers);
  }

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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestState(mode: $mode, questions: $questions, selectedIndex: $selectedIndex, selectedAnswers: $selectedAnswers, isFinished: $isFinished, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestState'))
      ..add(DiagnosticsProperty('mode', mode))
      ..add(DiagnosticsProperty('questions', questions))
      ..add(DiagnosticsProperty('selectedIndex', selectedIndex))
      ..add(DiagnosticsProperty('selectedAnswers', selectedAnswers))
      ..add(DiagnosticsProperty('isFinished', isFinished))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestState &&
            (identical(other.mode, mode) || other.mode == mode) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            const DeepCollectionEquality()
                .equals(other._selectedAnswers, _selectedAnswers) &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      mode,
      const DeepCollectionEquality().hash(_questions),
      selectedIndex,
      const DeepCollectionEquality().hash(_selectedAnswers),
      isFinished,
      isLoading,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestStateCopyWith<_$_TestState> get copyWith =>
      __$$_TestStateCopyWithImpl<_$_TestState>(this, _$identity);
}

abstract class _TestState implements TestState {
  const factory _TestState(
      {required final TestMode mode,
      final List<TestQuestion> questions,
      final int? selectedIndex,
      final Set<int> selectedAnswers,
      final bool isFinished,
      final bool isLoading,
      final String? errorMessage}) = _$_TestState;

  @override
  TestMode get mode;
  @override
  List<TestQuestion> get questions;
  @override
  int? get selectedIndex;
  @override
  Set<int> get selectedAnswers;
  @override
  bool get isFinished;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_TestStateCopyWith<_$_TestState> get copyWith =>
      throw _privateConstructorUsedError;
}
