part of 'qualification_premium_status_bloc.dart';

@freezed
class QualificationPremiumStatusEvent with _$QualificationPremiumStatusEvent {
  const factory QualificationPremiumStatusEvent.qualificationSelected({
    required Qualification qualification,
  }) = _QualificationSelected;

  const factory QualificationPremiumStatusEvent.userPurchasesUpdated({
    required List<String> qualificationIds,
  }) = _UserPurchasesUpdated;
}
