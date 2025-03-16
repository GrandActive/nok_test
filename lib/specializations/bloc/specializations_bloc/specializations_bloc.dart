import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nok_test/specializations/models/specialization.dart';
import 'package:nok_test/specializations/specializations_repository.dart';

part 'specializations_bloc.freezed.dart';
part 'specializations_event.dart';
part 'specializations_state.dart';

@injectable
class SpecializationsBloc extends Bloc<SpecializationsEvent, SpecializationsState> {
  SpecializationsBloc(this._repository) : super(const SpecializationsState.loading()) {
    on<SpecializationsEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(SpecializationsState.loading());
          try {
            final specializations = await _repository.getAllSpecializations();
            emit(SpecializationsState.success(specializations: specializations));
          } catch (e) {
            print(e.toString());
            emit(SpecializationsState.failure(message: e.toString()));
          }
        },
      );
    });
  }

  final SpecializationsRepository _repository;
}
