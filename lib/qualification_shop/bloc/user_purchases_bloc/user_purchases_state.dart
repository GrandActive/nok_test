part of 'user_purchases_bloc.dart';

@freezed
class UserPurchasesState with _$UserPurchasesState {
  const factory UserPurchasesState.initial() = _Initial;

  const factory UserPurchasesState.loading() = _Loading;

  const factory UserPurchasesState.success({
    required List<String> qualificationIds,
  }) = _Success;

  const factory UserPurchasesState.failure({
    required String message,
  }) = _Failure;
}
