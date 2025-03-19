// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Qualification qualification) started,
    required TResult Function(int index) questionSelected,
    required TResult Function() nextQuestionRequested,
    required TResult Function() prevQuestionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Qualification qualification)? started,
    TResult? Function(int index)? questionSelected,
    TResult? Function()? nextQuestionRequested,
    TResult? Function()? prevQuestionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Qualification qualification)? started,
    TResult Function(int index)? questionSelected,
    TResult Function()? nextQuestionRequested,
    TResult Function()? prevQuestionRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_QuestionSelected value) questionSelected,
    required TResult Function(_NextQuestionRequested value)
        nextQuestionRequested,
    required TResult Function(_PrevQuestionRequested value)
        prevQuestionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_QuestionSelected value)? questionSelected,
    TResult? Function(_NextQuestionRequested value)? nextQuestionRequested,
    TResult? Function(_PrevQuestionRequested value)? prevQuestionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_QuestionSelected value)? questionSelected,
    TResult Function(_NextQuestionRequested value)? nextQuestionRequested,
    TResult Function(_PrevQuestionRequested value)? prevQuestionRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionListEventCopyWith<$Res> {
  factory $QuestionListEventCopyWith(
          QuestionListEvent value, $Res Function(QuestionListEvent) then) =
      _$QuestionListEventCopyWithImpl<$Res, QuestionListEvent>;
}

/// @nodoc
class _$QuestionListEventCopyWithImpl<$Res, $Val extends QuestionListEvent>
    implements $QuestionListEventCopyWith<$Res> {
  _$QuestionListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Qualification qualification});

  $QualificationCopyWith<$Res> get qualification;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$QuestionListEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qualification = null,
  }) {
    return _then(_$StartedImpl(
      qualification: null == qualification
          ? _value.qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as Qualification,
    ));
  }

  /// Create a copy of QuestionListEvent
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

class _$StartedImpl implements _Started {
  const _$StartedImpl({required this.qualification});

  @override
  final Qualification qualification;

  @override
  String toString() {
    return 'QuestionListEvent.started(qualification: $qualification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.qualification, qualification) ||
                other.qualification == qualification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, qualification);

  /// Create a copy of QuestionListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Qualification qualification) started,
    required TResult Function(int index) questionSelected,
    required TResult Function() nextQuestionRequested,
    required TResult Function() prevQuestionRequested,
  }) {
    return started(qualification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Qualification qualification)? started,
    TResult? Function(int index)? questionSelected,
    TResult? Function()? nextQuestionRequested,
    TResult? Function()? prevQuestionRequested,
  }) {
    return started?.call(qualification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Qualification qualification)? started,
    TResult Function(int index)? questionSelected,
    TResult Function()? nextQuestionRequested,
    TResult Function()? prevQuestionRequested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(qualification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_QuestionSelected value) questionSelected,
    required TResult Function(_NextQuestionRequested value)
        nextQuestionRequested,
    required TResult Function(_PrevQuestionRequested value)
        prevQuestionRequested,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_QuestionSelected value)? questionSelected,
    TResult? Function(_NextQuestionRequested value)? nextQuestionRequested,
    TResult? Function(_PrevQuestionRequested value)? prevQuestionRequested,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_QuestionSelected value)? questionSelected,
    TResult Function(_NextQuestionRequested value)? nextQuestionRequested,
    TResult Function(_PrevQuestionRequested value)? prevQuestionRequested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements QuestionListEvent {
  const factory _Started({required final Qualification qualification}) =
      _$StartedImpl;

  Qualification get qualification;

  /// Create a copy of QuestionListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestionSelectedImplCopyWith<$Res> {
  factory _$$QuestionSelectedImplCopyWith(_$QuestionSelectedImpl value,
          $Res Function(_$QuestionSelectedImpl) then) =
      __$$QuestionSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$QuestionSelectedImplCopyWithImpl<$Res>
    extends _$QuestionListEventCopyWithImpl<$Res, _$QuestionSelectedImpl>
    implements _$$QuestionSelectedImplCopyWith<$Res> {
  __$$QuestionSelectedImplCopyWithImpl(_$QuestionSelectedImpl _value,
      $Res Function(_$QuestionSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$QuestionSelectedImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuestionSelectedImpl implements _QuestionSelected {
  const _$QuestionSelectedImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'QuestionListEvent.questionSelected(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionSelectedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of QuestionListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionSelectedImplCopyWith<_$QuestionSelectedImpl> get copyWith =>
      __$$QuestionSelectedImplCopyWithImpl<_$QuestionSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Qualification qualification) started,
    required TResult Function(int index) questionSelected,
    required TResult Function() nextQuestionRequested,
    required TResult Function() prevQuestionRequested,
  }) {
    return questionSelected(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Qualification qualification)? started,
    TResult? Function(int index)? questionSelected,
    TResult? Function()? nextQuestionRequested,
    TResult? Function()? prevQuestionRequested,
  }) {
    return questionSelected?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Qualification qualification)? started,
    TResult Function(int index)? questionSelected,
    TResult Function()? nextQuestionRequested,
    TResult Function()? prevQuestionRequested,
    required TResult orElse(),
  }) {
    if (questionSelected != null) {
      return questionSelected(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_QuestionSelected value) questionSelected,
    required TResult Function(_NextQuestionRequested value)
        nextQuestionRequested,
    required TResult Function(_PrevQuestionRequested value)
        prevQuestionRequested,
  }) {
    return questionSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_QuestionSelected value)? questionSelected,
    TResult? Function(_NextQuestionRequested value)? nextQuestionRequested,
    TResult? Function(_PrevQuestionRequested value)? prevQuestionRequested,
  }) {
    return questionSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_QuestionSelected value)? questionSelected,
    TResult Function(_NextQuestionRequested value)? nextQuestionRequested,
    TResult Function(_PrevQuestionRequested value)? prevQuestionRequested,
    required TResult orElse(),
  }) {
    if (questionSelected != null) {
      return questionSelected(this);
    }
    return orElse();
  }
}

abstract class _QuestionSelected implements QuestionListEvent {
  const factory _QuestionSelected({required final int index}) =
      _$QuestionSelectedImpl;

  int get index;

  /// Create a copy of QuestionListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionSelectedImplCopyWith<_$QuestionSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextQuestionRequestedImplCopyWith<$Res> {
  factory _$$NextQuestionRequestedImplCopyWith(
          _$NextQuestionRequestedImpl value,
          $Res Function(_$NextQuestionRequestedImpl) then) =
      __$$NextQuestionRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextQuestionRequestedImplCopyWithImpl<$Res>
    extends _$QuestionListEventCopyWithImpl<$Res, _$NextQuestionRequestedImpl>
    implements _$$NextQuestionRequestedImplCopyWith<$Res> {
  __$$NextQuestionRequestedImplCopyWithImpl(_$NextQuestionRequestedImpl _value,
      $Res Function(_$NextQuestionRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NextQuestionRequestedImpl implements _NextQuestionRequested {
  const _$NextQuestionRequestedImpl();

  @override
  String toString() {
    return 'QuestionListEvent.nextQuestionRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextQuestionRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Qualification qualification) started,
    required TResult Function(int index) questionSelected,
    required TResult Function() nextQuestionRequested,
    required TResult Function() prevQuestionRequested,
  }) {
    return nextQuestionRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Qualification qualification)? started,
    TResult? Function(int index)? questionSelected,
    TResult? Function()? nextQuestionRequested,
    TResult? Function()? prevQuestionRequested,
  }) {
    return nextQuestionRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Qualification qualification)? started,
    TResult Function(int index)? questionSelected,
    TResult Function()? nextQuestionRequested,
    TResult Function()? prevQuestionRequested,
    required TResult orElse(),
  }) {
    if (nextQuestionRequested != null) {
      return nextQuestionRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_QuestionSelected value) questionSelected,
    required TResult Function(_NextQuestionRequested value)
        nextQuestionRequested,
    required TResult Function(_PrevQuestionRequested value)
        prevQuestionRequested,
  }) {
    return nextQuestionRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_QuestionSelected value)? questionSelected,
    TResult? Function(_NextQuestionRequested value)? nextQuestionRequested,
    TResult? Function(_PrevQuestionRequested value)? prevQuestionRequested,
  }) {
    return nextQuestionRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_QuestionSelected value)? questionSelected,
    TResult Function(_NextQuestionRequested value)? nextQuestionRequested,
    TResult Function(_PrevQuestionRequested value)? prevQuestionRequested,
    required TResult orElse(),
  }) {
    if (nextQuestionRequested != null) {
      return nextQuestionRequested(this);
    }
    return orElse();
  }
}

abstract class _NextQuestionRequested implements QuestionListEvent {
  const factory _NextQuestionRequested() = _$NextQuestionRequestedImpl;
}

/// @nodoc
abstract class _$$PrevQuestionRequestedImplCopyWith<$Res> {
  factory _$$PrevQuestionRequestedImplCopyWith(
          _$PrevQuestionRequestedImpl value,
          $Res Function(_$PrevQuestionRequestedImpl) then) =
      __$$PrevQuestionRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PrevQuestionRequestedImplCopyWithImpl<$Res>
    extends _$QuestionListEventCopyWithImpl<$Res, _$PrevQuestionRequestedImpl>
    implements _$$PrevQuestionRequestedImplCopyWith<$Res> {
  __$$PrevQuestionRequestedImplCopyWithImpl(_$PrevQuestionRequestedImpl _value,
      $Res Function(_$PrevQuestionRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PrevQuestionRequestedImpl implements _PrevQuestionRequested {
  const _$PrevQuestionRequestedImpl();

  @override
  String toString() {
    return 'QuestionListEvent.prevQuestionRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrevQuestionRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Qualification qualification) started,
    required TResult Function(int index) questionSelected,
    required TResult Function() nextQuestionRequested,
    required TResult Function() prevQuestionRequested,
  }) {
    return prevQuestionRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Qualification qualification)? started,
    TResult? Function(int index)? questionSelected,
    TResult? Function()? nextQuestionRequested,
    TResult? Function()? prevQuestionRequested,
  }) {
    return prevQuestionRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Qualification qualification)? started,
    TResult Function(int index)? questionSelected,
    TResult Function()? nextQuestionRequested,
    TResult Function()? prevQuestionRequested,
    required TResult orElse(),
  }) {
    if (prevQuestionRequested != null) {
      return prevQuestionRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_QuestionSelected value) questionSelected,
    required TResult Function(_NextQuestionRequested value)
        nextQuestionRequested,
    required TResult Function(_PrevQuestionRequested value)
        prevQuestionRequested,
  }) {
    return prevQuestionRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_QuestionSelected value)? questionSelected,
    TResult? Function(_NextQuestionRequested value)? nextQuestionRequested,
    TResult? Function(_PrevQuestionRequested value)? prevQuestionRequested,
  }) {
    return prevQuestionRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_QuestionSelected value)? questionSelected,
    TResult Function(_NextQuestionRequested value)? nextQuestionRequested,
    TResult Function(_PrevQuestionRequested value)? prevQuestionRequested,
    required TResult orElse(),
  }) {
    if (prevQuestionRequested != null) {
      return prevQuestionRequested(this);
    }
    return orElse();
  }
}

abstract class _PrevQuestionRequested implements QuestionListEvent {
  const factory _PrevQuestionRequested() = _$PrevQuestionRequestedImpl;
}

/// @nodoc
mixin _$QuestionListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Question> questions,
            int? selectedQuestionIndex,
            bool isSelectedQuestionFirst,
            bool isSelectedQuestionLast)
        success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Question> questions, int? selectedQuestionIndex,
            bool isSelectedQuestionFirst, bool isSelectedQuestionLast)?
        success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> questions, int? selectedQuestionIndex,
            bool isSelectedQuestionFirst, bool isSelectedQuestionLast)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionListStateCopyWith<$Res> {
  factory $QuestionListStateCopyWith(
          QuestionListState value, $Res Function(QuestionListState) then) =
      _$QuestionListStateCopyWithImpl<$Res, QuestionListState>;
}

/// @nodoc
class _$QuestionListStateCopyWithImpl<$Res, $Val extends QuestionListState>
    implements $QuestionListStateCopyWith<$Res> {
  _$QuestionListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$QuestionListStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'QuestionListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Question> questions,
            int? selectedQuestionIndex,
            bool isSelectedQuestionFirst,
            bool isSelectedQuestionLast)
        success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Question> questions, int? selectedQuestionIndex,
            bool isSelectedQuestionFirst, bool isSelectedQuestionLast)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> questions, int? selectedQuestionIndex,
            bool isSelectedQuestionFirst, bool isSelectedQuestionLast)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class _Loading implements QuestionListState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Question> questions,
      int? selectedQuestionIndex,
      bool isSelectedQuestionFirst,
      bool isSelectedQuestionLast});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$QuestionListStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
    Object? selectedQuestionIndex = freezed,
    Object? isSelectedQuestionFirst = null,
    Object? isSelectedQuestionLast = null,
  }) {
    return _then(_$SuccessImpl(
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      selectedQuestionIndex: freezed == selectedQuestionIndex
          ? _value.selectedQuestionIndex
          : selectedQuestionIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      isSelectedQuestionFirst: null == isSelectedQuestionFirst
          ? _value.isSelectedQuestionFirst
          : isSelectedQuestionFirst // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelectedQuestionLast: null == isSelectedQuestionLast
          ? _value.isSelectedQuestionLast
          : isSelectedQuestionLast // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {required final List<Question> questions,
      this.selectedQuestionIndex = null,
      this.isSelectedQuestionFirst = false,
      this.isSelectedQuestionLast = false})
      : _questions = questions;

  final List<Question> _questions;
  @override
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  @JsonKey()
  final int? selectedQuestionIndex;
  @override
  @JsonKey()
  final bool isSelectedQuestionFirst;
  @override
  @JsonKey()
  final bool isSelectedQuestionLast;

  @override
  String toString() {
    return 'QuestionListState.success(questions: $questions, selectedQuestionIndex: $selectedQuestionIndex, isSelectedQuestionFirst: $isSelectedQuestionFirst, isSelectedQuestionLast: $isSelectedQuestionLast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.selectedQuestionIndex, selectedQuestionIndex) ||
                other.selectedQuestionIndex == selectedQuestionIndex) &&
            (identical(
                    other.isSelectedQuestionFirst, isSelectedQuestionFirst) ||
                other.isSelectedQuestionFirst == isSelectedQuestionFirst) &&
            (identical(other.isSelectedQuestionLast, isSelectedQuestionLast) ||
                other.isSelectedQuestionLast == isSelectedQuestionLast));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_questions),
      selectedQuestionIndex,
      isSelectedQuestionFirst,
      isSelectedQuestionLast);

  /// Create a copy of QuestionListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Question> questions,
            int? selectedQuestionIndex,
            bool isSelectedQuestionFirst,
            bool isSelectedQuestionLast)
        success,
    required TResult Function(String message) failure,
  }) {
    return success(questions, selectedQuestionIndex, isSelectedQuestionFirst,
        isSelectedQuestionLast);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Question> questions, int? selectedQuestionIndex,
            bool isSelectedQuestionFirst, bool isSelectedQuestionLast)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(questions, selectedQuestionIndex,
        isSelectedQuestionFirst, isSelectedQuestionLast);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> questions, int? selectedQuestionIndex,
            bool isSelectedQuestionFirst, bool isSelectedQuestionLast)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(questions, selectedQuestionIndex, isSelectedQuestionFirst,
          isSelectedQuestionLast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class _Success implements QuestionListState {
  const factory _Success(
      {required final List<Question> questions,
      final int? selectedQuestionIndex,
      final bool isSelectedQuestionFirst,
      final bool isSelectedQuestionLast}) = _$SuccessImpl;

  List<Question> get questions;
  int? get selectedQuestionIndex;
  bool get isSelectedQuestionFirst;
  bool get isSelectedQuestionLast;

  /// Create a copy of QuestionListState
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
  $Res call({String message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$QuestionListStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'QuestionListState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of QuestionListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Question> questions,
            int? selectedQuestionIndex,
            bool isSelectedQuestionFirst,
            bool isSelectedQuestionLast)
        success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Question> questions, int? selectedQuestionIndex,
            bool isSelectedQuestionFirst, bool isSelectedQuestionLast)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> questions, int? selectedQuestionIndex,
            bool isSelectedQuestionFirst, bool isSelectedQuestionLast)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class _Failure implements QuestionListState {
  const factory _Failure({required final String message}) = _$FailureImpl;

  String get message;

  /// Create a copy of QuestionListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
