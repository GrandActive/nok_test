part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;

  const factory AuthEvent.userStateUpdated({
    required User? user,
  }) = _UserStateUpdated;

  const factory AuthEvent.logOut() = _LogOut;
}
