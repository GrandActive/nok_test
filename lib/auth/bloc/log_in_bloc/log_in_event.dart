part of 'log_in_bloc.dart';

@freezed
class LogInEvent with _$LogInEvent {
  const factory LogInEvent.logIn({
    required String email,
    required String password,
  }) = _LogIn;
}
