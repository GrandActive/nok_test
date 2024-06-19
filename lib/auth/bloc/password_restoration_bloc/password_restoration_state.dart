part of 'password_restoration_bloc.dart';

@freezed
class PasswordRestorationState with _$PasswordRestorationState {
  const factory PasswordRestorationState.initial() = _Initial;

  const factory PasswordRestorationState.loading() = _Loading;

  const factory PasswordRestorationState.success({
    required String email,
  }) = _Success;

  const factory PasswordRestorationState.failure({
    required PasswordRestorationException exception,
  }) = _Failure;
}
