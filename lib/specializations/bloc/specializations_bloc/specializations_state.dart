part of 'specializations_bloc.dart';

@freezed
class SpecializationsState with _$SpecializationsState {
  const factory SpecializationsState.loading() = _Loading;

  const factory SpecializationsState.success({
    required List<Specialization> specializations,
  }) = _Success;

  const factory SpecializationsState.failure({
    required String message,
  }) = _Failure;
}
