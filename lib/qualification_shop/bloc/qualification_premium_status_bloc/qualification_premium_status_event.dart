part of 'qualification_premium_status_bloc.dart';

@freezed
class QualificationPremiumStatusEvent with _$QualificationPremiumStatusEvent {
  const factory QualificationPremiumStatusEvent.requested({
    required String userId,
    required Qualification qualification,
  }) = _Requested;
}
