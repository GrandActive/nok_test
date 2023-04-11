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
    required TResult Function() started,
    required TResult Function(int index) selected,
    required TResult Function(Set<int>? answers) answersSelected,
    required TResult Function() answersSent,
    required TResult Function() finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? selected,
    TResult? Function(Set<int>? answers)? answersSelected,
    TResult? Function()? answersSent,
    TResult? Function()? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? selected,
    TResult Function(Set<int>? answers)? answersSelected,
    TResult Function()? answersSent,
    TResult Function()? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Selected value) selected,
    required TResult Function(_AnswersSelected value) answersSelected,
    required TResult Function(_AnswersSent value) answersSent,
    required TResult Function(_Finished value) finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_AnswersSelected value)? answersSelected,
    TResult? Function(_AnswersSent value)? answersSent,
    TResult? Function(_Finished value)? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? selected,
    TResult Function(_AnswersSelected value)? answersSelected,
    TResult Function(_AnswersSent value)? answersSent,
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
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TestEvent.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) selected,
    required TResult Function(Set<int>? answers) answersSelected,
    required TResult Function() answersSent,
    required TResult Function() finished,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? selected,
    TResult? Function(Set<int>? answers)? answersSelected,
    TResult? Function()? answersSent,
    TResult? Function()? finished,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? selected,
    TResult Function(Set<int>? answers)? answersSelected,
    TResult Function()? answersSent,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Selected value) selected,
    required TResult Function(_AnswersSelected value) answersSelected,
    required TResult Function(_AnswersSent value) answersSent,
    required TResult Function(_Finished value) finished,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_AnswersSelected value)? answersSelected,
    TResult? Function(_AnswersSent value)? answersSent,
    TResult? Function(_Finished value)? finished,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? selected,
    TResult Function(_AnswersSelected value)? answersSelected,
    TResult Function(_AnswersSent value)? answersSent,
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
  const factory _Started() = _$_Started;
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
    required TResult Function() started,
    required TResult Function(int index) selected,
    required TResult Function(Set<int>? answers) answersSelected,
    required TResult Function() answersSent,
    required TResult Function() finished,
  }) {
    return selected(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? selected,
    TResult? Function(Set<int>? answers)? answersSelected,
    TResult? Function()? answersSent,
    TResult? Function()? finished,
  }) {
    return selected?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? selected,
    TResult Function(Set<int>? answers)? answersSelected,
    TResult Function()? answersSent,
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
    required TResult Function(_AnswersSelected value) answersSelected,
    required TResult Function(_AnswersSent value) answersSent,
    required TResult Function(_Finished value) finished,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_AnswersSelected value)? answersSelected,
    TResult? Function(_AnswersSent value)? answersSent,
    TResult? Function(_Finished value)? finished,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? selected,
    TResult Function(_AnswersSelected value)? answersSelected,
    TResult Function(_AnswersSent value)? answersSent,
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
abstract class _$$_AnswersSelectedCopyWith<$Res> {
  factory _$$_AnswersSelectedCopyWith(
          _$_AnswersSelected value, $Res Function(_$_AnswersSelected) then) =
      __$$_AnswersSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({Set<int>? answers});
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
    Object? answers = freezed,
  }) {
    return _then(_$_AnswersSelected(
      answers: freezed == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as Set<int>?,
    ));
  }
}

/// @nodoc

class _$_AnswersSelected
    with DiagnosticableTreeMixin
    implements _AnswersSelected {
  const _$_AnswersSelected({required final Set<int>? answers})
      : _answers = answers;

  final Set<int>? _answers;
  @override
  Set<int>? get answers {
    final value = _answers;
    if (value == null) return null;
    if (_answers is EqualUnmodifiableSetView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
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
    required TResult Function() started,
    required TResult Function(int index) selected,
    required TResult Function(Set<int>? answers) answersSelected,
    required TResult Function() answersSent,
    required TResult Function() finished,
  }) {
    return answersSelected(answers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? selected,
    TResult? Function(Set<int>? answers)? answersSelected,
    TResult? Function()? answersSent,
    TResult? Function()? finished,
  }) {
    return answersSelected?.call(answers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? selected,
    TResult Function(Set<int>? answers)? answersSelected,
    TResult Function()? answersSent,
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
    required TResult Function(_AnswersSelected value) answersSelected,
    required TResult Function(_AnswersSent value) answersSent,
    required TResult Function(_Finished value) finished,
  }) {
    return answersSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_AnswersSelected value)? answersSelected,
    TResult? Function(_AnswersSent value)? answersSent,
    TResult? Function(_Finished value)? finished,
  }) {
    return answersSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? selected,
    TResult Function(_AnswersSelected value)? answersSelected,
    TResult Function(_AnswersSent value)? answersSent,
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
  const factory _AnswersSelected({required final Set<int>? answers}) =
      _$_AnswersSelected;

  Set<int>? get answers;
  @JsonKey(ignore: true)
  _$$_AnswersSelectedCopyWith<_$_AnswersSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AnswersSentCopyWith<$Res> {
  factory _$$_AnswersSentCopyWith(
          _$_AnswersSent value, $Res Function(_$_AnswersSent) then) =
      __$$_AnswersSentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AnswersSentCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$_AnswersSent>
    implements _$$_AnswersSentCopyWith<$Res> {
  __$$_AnswersSentCopyWithImpl(
      _$_AnswersSent _value, $Res Function(_$_AnswersSent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AnswersSent with DiagnosticableTreeMixin implements _AnswersSent {
  const _$_AnswersSent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.answersSent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TestEvent.answersSent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AnswersSent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) selected,
    required TResult Function(Set<int>? answers) answersSelected,
    required TResult Function() answersSent,
    required TResult Function() finished,
  }) {
    return answersSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? selected,
    TResult? Function(Set<int>? answers)? answersSelected,
    TResult? Function()? answersSent,
    TResult? Function()? finished,
  }) {
    return answersSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? selected,
    TResult Function(Set<int>? answers)? answersSelected,
    TResult Function()? answersSent,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (answersSent != null) {
      return answersSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Selected value) selected,
    required TResult Function(_AnswersSelected value) answersSelected,
    required TResult Function(_AnswersSent value) answersSent,
    required TResult Function(_Finished value) finished,
  }) {
    return answersSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_AnswersSelected value)? answersSelected,
    TResult? Function(_AnswersSent value)? answersSent,
    TResult? Function(_Finished value)? finished,
  }) {
    return answersSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? selected,
    TResult Function(_AnswersSelected value)? answersSelected,
    TResult Function(_AnswersSent value)? answersSent,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (answersSent != null) {
      return answersSent(this);
    }
    return orElse();
  }
}

abstract class _AnswersSent implements TestEvent {
  const factory _AnswersSent() = _$_AnswersSent;
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
    required TResult Function() started,
    required TResult Function(int index) selected,
    required TResult Function(Set<int>? answers) answersSelected,
    required TResult Function() answersSent,
    required TResult Function() finished,
  }) {
    return finished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? selected,
    TResult? Function(Set<int>? answers)? answersSelected,
    TResult? Function()? answersSent,
    TResult? Function()? finished,
  }) {
    return finished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? selected,
    TResult Function(Set<int>? answers)? answersSelected,
    TResult Function()? answersSent,
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
    required TResult Function(_AnswersSelected value) answersSelected,
    required TResult Function(_AnswersSent value) answersSent,
    required TResult Function(_Finished value) finished,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_AnswersSelected value)? answersSelected,
    TResult? Function(_AnswersSent value)? answersSent,
    TResult? Function(_Finished value)? finished,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? selected,
    TResult Function(_AnswersSelected value)? answersSelected,
    TResult Function(_AnswersSent value)? answersSent,
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
  List<TestQuestion> get questions => throw _privateConstructorUsedError;
  int? get selectedIndex => throw _privateConstructorUsedError;
  Set<int>? get selectedAnswers => throw _privateConstructorUsedError;
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
      {List<TestQuestion> questions,
      int? selectedIndex,
      Set<int>? selectedAnswers,
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
    Object? questions = null,
    Object? selectedIndex = freezed,
    Object? selectedAnswers = freezed,
    Object? isFinished = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<TestQuestion>,
      selectedIndex: freezed == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedAnswers: freezed == selectedAnswers
          ? _value.selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as Set<int>?,
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
      {List<TestQuestion> questions,
      int? selectedIndex,
      Set<int>? selectedAnswers,
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
    Object? questions = null,
    Object? selectedIndex = freezed,
    Object? selectedAnswers = freezed,
    Object? isFinished = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_TestState(
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<TestQuestion>,
      selectedIndex: freezed == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedAnswers: freezed == selectedAnswers
          ? _value._selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as Set<int>?,
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
      {final List<TestQuestion> questions = const [],
      this.selectedIndex = null,
      final Set<int>? selectedAnswers = null,
      this.isFinished = false,
      this.isLoading = true,
      this.errorMessage = null})
      : _questions = questions,
        _selectedAnswers = selectedAnswers;

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
  final Set<int>? _selectedAnswers;
  @override
  @JsonKey()
  Set<int>? get selectedAnswers {
    final value = _selectedAnswers;
    if (value == null) return null;
    if (_selectedAnswers is EqualUnmodifiableSetView) return _selectedAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
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
    return 'TestState(questions: $questions, selectedIndex: $selectedIndex, selectedAnswers: $selectedAnswers, isFinished: $isFinished, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestState'))
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
      {final List<TestQuestion> questions,
      final int? selectedIndex,
      final Set<int>? selectedAnswers,
      final bool isFinished,
      final bool isLoading,
      final String? errorMessage}) = _$_TestState;

  @override
  List<TestQuestion> get questions;
  @override
  int? get selectedIndex;
  @override
  Set<int>? get selectedAnswers;
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
