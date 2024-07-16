import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nok_test/premium/data/premium_repository.dart';

part 'premium_bloc.freezed.dart';
part 'premium_event.dart';
part 'premium_state.dart';

@injectable
class PremiumBloc extends Bloc<PremiumEvent, PremiumState> {
  PremiumBloc(this._repository) : super(const PremiumState.disabled()) {
    on<PremiumEvent>((event, emit) async {
      await event.when(
        statusRequested: () async {
          emit(const PremiumState.loading());
          try {
            final isEnabled = await _repository.isPremiumEnabled();
            if (isEnabled) {
              emit(const PremiumState.enabled());
            } else {
              emit(const PremiumState.disabled());
            }
          } catch (e) {
            emit(const PremiumState.loading());
          }
        },
        reset: () {
          emit(const PremiumState.disabled());
        },
      );
    });
  }

  final PremiumRepository _repository;
}
