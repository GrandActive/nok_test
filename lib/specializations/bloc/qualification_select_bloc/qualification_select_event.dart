part of 'qualification_select_bloc.dart';

@freezed
class QualificationSelectEvent with _$QualificationSelectEvent {
  const factory QualificationSelectEvent.initialized({
    required List<Qualification> qualifications,
  }) = _Initialized;

  const factory QualificationSelectEvent.selected({
    required int index,
  }) = _SelectedEvent;
}
