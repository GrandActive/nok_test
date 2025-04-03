part of 'user_purchases_bloc.dart';

@freezed
class UserPurchasesEvent with _$UserPurchasesEvent {
  const factory UserPurchasesEvent.requested({
    required String userId,
  }) = _Requested;
}
