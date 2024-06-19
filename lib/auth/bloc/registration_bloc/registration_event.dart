part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.started() = _Started;

  const factory RegistrationEvent.credentialsSent({
    required String email,
    required String password,
  }) = _CredentialsSent;
}
