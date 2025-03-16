part of 'specialization_select_bloc.dart';

@freezed
class SpecializationSelectState with _$SpecializationSelectState {
  const SpecializationSelectState._();

  const factory SpecializationSelectState.initial() = _Initial;

  const factory SpecializationSelectState.active({
    required List<Specialization> allSpecializations,
    @Default(null) int? selectedIndex,
  }) = _Active;

  Specialization? get selectedSpecialization => whenOrNull(
        active: (allSpecializations, selectedIndex) {
          if (selectedIndex == null) return null;
          return allSpecializations[selectedIndex];
        },
      );
}
