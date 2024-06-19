import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nok_test/auth/data/auth_repository.dart';
import 'package:nok_test/auth/data/exceptions/password_restoration_exception.dart';

part 'password_restoration_bloc.freezed.dart';
part 'password_restoration_event.dart';
part 'password_restoration_state.dart';

@injectable
class PasswordRestorationBloc extends Bloc<PasswordRestorationEvent, PasswordRestorationState> {
  PasswordRestorationBloc(this._repository) : super(const PasswordRestorationState.initial()) {
    on<PasswordRestorationEvent>((event, emit) async {
      await event.when(
        started: (email) async {
          emit(const PasswordRestorationState.loading());
          try {
            await _repository.resetPasswordViaEmail(email);
            emit(PasswordRestorationState.success(email: email));
          } on PasswordRestorationException catch (e) {
            emit(PasswordRestorationState.failure(exception: e));
          } catch (e) {
            rethrow;
          }
        },
      );
    });
  }

  final AuthRepository _repository;
}
