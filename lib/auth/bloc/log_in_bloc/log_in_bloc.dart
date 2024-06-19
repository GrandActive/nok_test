import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nok_test/auth/data/auth_repository.dart';
import 'package:nok_test/auth/data/exceptions/log_in_exception.dart';

part 'log_in_bloc.freezed.dart';
part 'log_in_event.dart';
part 'log_in_state.dart';

@injectable
class LogInBloc extends Bloc<LogInEvent, LogInState> {
  LogInBloc(this._repository) : super(const LogInState.initial()) {
    on<LogInEvent>((event, emit) async {
      await event.when(
        logIn: (email, password) async {
          emit(const LogInState.loading());
          try {
            await _repository.logIn(email, password);
            emit(const LogInState.success());
          } on LogInException catch (e) {
            emit(LogInState.failure(exception: e));
          }
        },
      );
    });
  }

  final AuthRepository _repository;
}
