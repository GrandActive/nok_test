part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState.initial() = _Initial;

  const factory AuthState.authenticated({
    required User user,
  }) = _Authenticated;

  const factory AuthState.notAuthenticated() = _NotAuthenticated;

  bool get isAuthenticated => maybeWhen(
        authenticated: (_) => true,
        orElse: () => false,
      );

  User? get user => whenOrNull(
        authenticated: (user) => user,
      );
}
