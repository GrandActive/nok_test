part of 'user_purchases_bloc.dart';

@freezed
class UserPurchasesEvent with _$UserPurchasesEvent {
  const factory UserPurchasesEvent.started() = _Started;
}
