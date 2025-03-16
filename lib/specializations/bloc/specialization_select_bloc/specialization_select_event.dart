part of 'specialization_select_bloc.dart';

@freezed
class SpecializationSelectEvent with _$SpecializationSelectEvent {
  const factory SpecializationSelectEvent.initialized({
    required List<Specialization> specializations,
  }) = _Initialized;

  const factory SpecializationSelectEvent.selected({
    required int index,
  }) = _SelectedEvent;
}
