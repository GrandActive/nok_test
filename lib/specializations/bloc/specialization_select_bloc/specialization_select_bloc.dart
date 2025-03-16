import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nok_test/specializations/models/specialization.dart';

part 'specialization_select_bloc.freezed.dart';
part 'specialization_select_event.dart';
part 'specialization_select_state.dart';

@injectable
class SpecializationSelectBloc extends Bloc<SpecializationSelectEvent, SpecializationSelectState> {
  SpecializationSelectBloc() : super(const SpecializationSelectState.initial()) {
    on<SpecializationSelectEvent>((event, emit) {
      event.when(
        initialized: (specializations) {
          emit(SpecializationSelectState.active(allSpecializations: specializations));
        },
        selected: (index) {
          state.whenOrNull(
            active: (allSpecializations, _) {
              emit(SpecializationSelectState.active(
                allSpecializations: allSpecializations,
                selectedIndex: index,
              ));
            },
          );
        },
      );
    });
  }
}
