import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nok_test/auth/data/auth_repository.dart';
import 'package:nok_test/auth/data/exceptions/registration_exception.dart';

part 'registration_bloc.freezed.dart';
part 'registration_event.dart';
part 'registration_state.dart';

@injectable
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc(this._repository) : super(const RegistrationState.initial()) {
    on<RegistrationEvent>((event, emit) async {
      await event.when(
        started: () {},
        credentialsSent: (email, password) async {
          emit(const RegistrationState.loading());
          try {
            await _repository.registerNewUser(email, password);
            emit(const RegistrationState.success());
          } on RegistrationException catch (e) {
            emit(RegistrationState.failure(exception: e));
          }
        },
      );
    });
  }

  final AuthRepository _repository;
}
