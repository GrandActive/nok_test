part of 'qualification_premium_status_bloc.dart';

@freezed
class QualificationPremiumStatusState with _$QualificationPremiumStatusState {
  const QualificationPremiumStatusState._();

  const factory QualificationPremiumStatusState({
    @Default(null) Qualification? qualification,
    @Default([]) List<String> userPurchases,
  }) = _QualificationPremiumStatusState;

  bool? get isPurchased => qualification == null ? null : userPurchases.contains(qualification?.id);
}
