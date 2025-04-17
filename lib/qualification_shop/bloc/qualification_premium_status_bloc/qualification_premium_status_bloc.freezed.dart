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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Qualification qualification)
        qualificationSelected,
    required TResult Function(List<String> qualificationIds)
        userPurchasesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Qualification qualification)? qualificationSelected,
    TResult? Function(List<String> qualificationIds)? userPurchasesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Qualification qualification)? qualificationSelected,
    TResult Function(List<String> qualificationIds)? userPurchasesUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QualificationSelected value)
        qualificationSelected,
    required TResult Function(_UserPurchasesUpdated value) userPurchasesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QualificationSelected value)? qualificationSelected,
    TResult? Function(_UserPurchasesUpdated value)? userPurchasesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QualificationSelected value)? qualificationSelected,
    TResult Function(_UserPurchasesUpdated value)? userPurchasesUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QualificationPremiumStatusEventCopyWith<$Res> {
  factory $QualificationPremiumStatusEventCopyWith(
          QualificationPremiumStatusEvent value,
          $Res Function(QualificationPremiumStatusEvent) then) =
      _$QualificationPremiumStatusEventCopyWithImpl<$Res,
          QualificationPremiumStatusEvent>;
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
}

/// @nodoc
abstract class _$$QualificationSelectedImplCopyWith<$Res> {
  factory _$$QualificationSelectedImplCopyWith(
          _$QualificationSelectedImpl value,
          $Res Function(_$QualificationSelectedImpl) then) =
      __$$QualificationSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Qualification qualification});

  $QualificationCopyWith<$Res> get qualification;
}

/// @nodoc
class __$$QualificationSelectedImplCopyWithImpl<$Res>
    extends _$QualificationPremiumStatusEventCopyWithImpl<$Res,
        _$QualificationSelectedImpl>
    implements _$$QualificationSelectedImplCopyWith<$Res> {
  __$$QualificationSelectedImplCopyWithImpl(_$QualificationSelectedImpl _value,
      $Res Function(_$QualificationSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of QualificationPremiumStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qualification = null,
  }) {
    return _then(_$QualificationSelectedImpl(
      qualification: null == qualification
          ? _value.qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as Qualification,
    ));
  }

  /// Create a copy of QualificationPremiumStatusEvent
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

class _$QualificationSelectedImpl implements _QualificationSelected {
  const _$QualificationSelectedImpl({required this.qualification});

  @override
  final Qualification qualification;

  @override
  String toString() {
    return 'QualificationPremiumStatusEvent.qualificationSelected(qualification: $qualification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QualificationSelectedImpl &&
            (identical(other.qualification, qualification) ||
                other.qualification == qualification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, qualification);

  /// Create a copy of QualificationPremiumStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QualificationSelectedImplCopyWith<_$QualificationSelectedImpl>
      get copyWith => __$$QualificationSelectedImplCopyWithImpl<
          _$QualificationSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Qualification qualification)
        qualificationSelected,
    required TResult Function(List<String> qualificationIds)
        userPurchasesUpdated,
  }) {
    return qualificationSelected(qualification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Qualification qualification)? qualificationSelected,
    TResult? Function(List<String> qualificationIds)? userPurchasesUpdated,
  }) {
    return qualificationSelected?.call(qualification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Qualification qualification)? qualificationSelected,
    TResult Function(List<String> qualificationIds)? userPurchasesUpdated,
    required TResult orElse(),
  }) {
    if (qualificationSelected != null) {
      return qualificationSelected(qualification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QualificationSelected value)
        qualificationSelected,
    required TResult Function(_UserPurchasesUpdated value) userPurchasesUpdated,
  }) {
    return qualificationSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QualificationSelected value)? qualificationSelected,
    TResult? Function(_UserPurchasesUpdated value)? userPurchasesUpdated,
  }) {
    return qualificationSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QualificationSelected value)? qualificationSelected,
    TResult Function(_UserPurchasesUpdated value)? userPurchasesUpdated,
    required TResult orElse(),
  }) {
    if (qualificationSelected != null) {
      return qualificationSelected(this);
    }
    return orElse();
  }
}

abstract class _QualificationSelected
    implements QualificationPremiumStatusEvent {
  const factory _QualificationSelected(
          {required final Qualification qualification}) =
      _$QualificationSelectedImpl;

  Qualification get qualification;

  /// Create a copy of QualificationPremiumStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QualificationSelectedImplCopyWith<_$QualificationSelectedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserPurchasesUpdatedImplCopyWith<$Res> {
  factory _$$UserPurchasesUpdatedImplCopyWith(_$UserPurchasesUpdatedImpl value,
          $Res Function(_$UserPurchasesUpdatedImpl) then) =
      __$$UserPurchasesUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> qualificationIds});
}

/// @nodoc
class __$$UserPurchasesUpdatedImplCopyWithImpl<$Res>
    extends _$QualificationPremiumStatusEventCopyWithImpl<$Res,
        _$UserPurchasesUpdatedImpl>
    implements _$$UserPurchasesUpdatedImplCopyWith<$Res> {
  __$$UserPurchasesUpdatedImplCopyWithImpl(_$UserPurchasesUpdatedImpl _value,
      $Res Function(_$UserPurchasesUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of QualificationPremiumStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qualificationIds = null,
  }) {
    return _then(_$UserPurchasesUpdatedImpl(
      qualificationIds: null == qualificationIds
          ? _value._qualificationIds
          : qualificationIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$UserPurchasesUpdatedImpl implements _UserPurchasesUpdated {
  const _$UserPurchasesUpdatedImpl(
      {required final List<String> qualificationIds})
      : _qualificationIds = qualificationIds;

  final List<String> _qualificationIds;
  @override
  List<String> get qualificationIds {
    if (_qualificationIds is EqualUnmodifiableListView)
      return _qualificationIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_qualificationIds);
  }

  @override
  String toString() {
    return 'QualificationPremiumStatusEvent.userPurchasesUpdated(qualificationIds: $qualificationIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPurchasesUpdatedImpl &&
            const DeepCollectionEquality()
                .equals(other._qualificationIds, _qualificationIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_qualificationIds));

  /// Create a copy of QualificationPremiumStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPurchasesUpdatedImplCopyWith<_$UserPurchasesUpdatedImpl>
      get copyWith =>
          __$$UserPurchasesUpdatedImplCopyWithImpl<_$UserPurchasesUpdatedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Qualification qualification)
        qualificationSelected,
    required TResult Function(List<String> qualificationIds)
        userPurchasesUpdated,
  }) {
    return userPurchasesUpdated(qualificationIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Qualification qualification)? qualificationSelected,
    TResult? Function(List<String> qualificationIds)? userPurchasesUpdated,
  }) {
    return userPurchasesUpdated?.call(qualificationIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Qualification qualification)? qualificationSelected,
    TResult Function(List<String> qualificationIds)? userPurchasesUpdated,
    required TResult orElse(),
  }) {
    if (userPurchasesUpdated != null) {
      return userPurchasesUpdated(qualificationIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QualificationSelected value)
        qualificationSelected,
    required TResult Function(_UserPurchasesUpdated value) userPurchasesUpdated,
  }) {
    return userPurchasesUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QualificationSelected value)? qualificationSelected,
    TResult? Function(_UserPurchasesUpdated value)? userPurchasesUpdated,
  }) {
    return userPurchasesUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QualificationSelected value)? qualificationSelected,
    TResult Function(_UserPurchasesUpdated value)? userPurchasesUpdated,
    required TResult orElse(),
  }) {
    if (userPurchasesUpdated != null) {
      return userPurchasesUpdated(this);
    }
    return orElse();
  }
}

abstract class _UserPurchasesUpdated
    implements QualificationPremiumStatusEvent {
  const factory _UserPurchasesUpdated(
          {required final List<String> qualificationIds}) =
      _$UserPurchasesUpdatedImpl;

  List<String> get qualificationIds;

  /// Create a copy of QualificationPremiumStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPurchasesUpdatedImplCopyWith<_$UserPurchasesUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QualificationPremiumStatusState {
  Qualification? get qualification => throw _privateConstructorUsedError;
  List<String> get userPurchases => throw _privateConstructorUsedError;

  /// Create a copy of QualificationPremiumStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QualificationPremiumStatusStateCopyWith<QualificationPremiumStatusState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QualificationPremiumStatusStateCopyWith<$Res> {
  factory $QualificationPremiumStatusStateCopyWith(
          QualificationPremiumStatusState value,
          $Res Function(QualificationPremiumStatusState) then) =
      _$QualificationPremiumStatusStateCopyWithImpl<$Res,
          QualificationPremiumStatusState>;
  @useResult
  $Res call({Qualification? qualification, List<String> userPurchases});

  $QualificationCopyWith<$Res>? get qualification;
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qualification = freezed,
    Object? userPurchases = null,
  }) {
    return _then(_value.copyWith(
      qualification: freezed == qualification
          ? _value.qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as Qualification?,
      userPurchases: null == userPurchases
          ? _value.userPurchases
          : userPurchases // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of QualificationPremiumStatusState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QualificationCopyWith<$Res>? get qualification {
    if (_value.qualification == null) {
      return null;
    }

    return $QualificationCopyWith<$Res>(_value.qualification!, (value) {
      return _then(_value.copyWith(qualification: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QualificationPremiumStatusStateImplCopyWith<$Res>
    implements $QualificationPremiumStatusStateCopyWith<$Res> {
  factory _$$QualificationPremiumStatusStateImplCopyWith(
          _$QualificationPremiumStatusStateImpl value,
          $Res Function(_$QualificationPremiumStatusStateImpl) then) =
      __$$QualificationPremiumStatusStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Qualification? qualification, List<String> userPurchases});

  @override
  $QualificationCopyWith<$Res>? get qualification;
}

/// @nodoc
class __$$QualificationPremiumStatusStateImplCopyWithImpl<$Res>
    extends _$QualificationPremiumStatusStateCopyWithImpl<$Res,
        _$QualificationPremiumStatusStateImpl>
    implements _$$QualificationPremiumStatusStateImplCopyWith<$Res> {
  __$$QualificationPremiumStatusStateImplCopyWithImpl(
      _$QualificationPremiumStatusStateImpl _value,
      $Res Function(_$QualificationPremiumStatusStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of QualificationPremiumStatusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qualification = freezed,
    Object? userPurchases = null,
  }) {
    return _then(_$QualificationPremiumStatusStateImpl(
      qualification: freezed == qualification
          ? _value.qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as Qualification?,
      userPurchases: null == userPurchases
          ? _value._userPurchases
          : userPurchases // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$QualificationPremiumStatusStateImpl
    extends _QualificationPremiumStatusState {
  const _$QualificationPremiumStatusStateImpl(
      {this.qualification = null, final List<String> userPurchases = const []})
      : _userPurchases = userPurchases,
        super._();

  @override
  @JsonKey()
  final Qualification? qualification;
  final List<String> _userPurchases;
  @override
  @JsonKey()
  List<String> get userPurchases {
    if (_userPurchases is EqualUnmodifiableListView) return _userPurchases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userPurchases);
  }

  @override
  String toString() {
    return 'QualificationPremiumStatusState(qualification: $qualification, userPurchases: $userPurchases)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QualificationPremiumStatusStateImpl &&
            (identical(other.qualification, qualification) ||
                other.qualification == qualification) &&
            const DeepCollectionEquality()
                .equals(other._userPurchases, _userPurchases));
  }

  @override
  int get hashCode => Object.hash(runtimeType, qualification,
      const DeepCollectionEquality().hash(_userPurchases));

  /// Create a copy of QualificationPremiumStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QualificationPremiumStatusStateImplCopyWith<
          _$QualificationPremiumStatusStateImpl>
      get copyWith => __$$QualificationPremiumStatusStateImplCopyWithImpl<
          _$QualificationPremiumStatusStateImpl>(this, _$identity);
}

abstract class _QualificationPremiumStatusState
    extends QualificationPremiumStatusState {
  const factory _QualificationPremiumStatusState(
          {final Qualification? qualification,
          final List<String> userPurchases}) =
      _$QualificationPremiumStatusStateImpl;
  const _QualificationPremiumStatusState._() : super._();

  @override
  Qualification? get qualification;
  @override
  List<String> get userPurchases;

  /// Create a copy of QualificationPremiumStatusState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QualificationPremiumStatusStateImplCopyWith<
          _$QualificationPremiumStatusStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
