part of 'qualification_select_bloc.dart';

@freezed
class QualificationSelectState with _$QualificationSelectState {
  const QualificationSelectState._();

  const factory QualificationSelectState.initial() = _Initial;

  const factory QualificationSelectState.active({
    required List<Qualification> allQualifications,
    @Default(null) int? selectedIndex,
  }) = _Active;

  Qualification? get selectedQualification => whenOrNull(
        active: (allQualifications, selectedIndex) {
          if (selectedIndex == null) return null;
          return allQualifications[selectedIndex];
        },
      );
}
