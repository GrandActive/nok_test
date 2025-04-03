part of 'qualification_premium_status_bloc.dart';

@freezed
class QualificationPremiumStatusState with _$QualificationPremiumStatusState {
  const factory QualificationPremiumStatusState.initial() = _Initial;

  const factory QualificationPremiumStatusState.loading({
    required Qualification qualification,
  }) = _Loading;

  const factory QualificationPremiumStatusState.success({
    required Qualification qualification,
    required bool isPurchased,
  }) = _Success;

  const factory QualificationPremiumStatusState.failure({
    required Qualification qualification,
    required String message,
  }) = _Failure;
}
