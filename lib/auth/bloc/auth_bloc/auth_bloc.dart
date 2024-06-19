import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nok_test/auth/data/auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._repository) : super(const AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            final user = _repository.getCurrentUser();
            add(AuthEvent.userStateUpdated(user: user));

            await emit.onEach(
              _repository.getAuthStateStream(),
              onData: (data) => add(AuthEvent.userStateUpdated(user: data)),
            );
          },
          userStateUpdated: (User? user) {
            if (user != null) {
              emit(AuthState.authenticated(user: user));
            } else {
              emit(const AuthState.notAuthenticated());
            }
          },
          logOut: () async {
            await _repository.logOut();
          },
        );
      },
    );
  }

  final AuthRepository _repository;
}
