part of 'password_restoration_bloc.dart';

@freezed
class PasswordRestorationEvent with _$PasswordRestorationEvent {
  const factory PasswordRestorationEvent.started({
    required String email,
  }) = _Started;
}
