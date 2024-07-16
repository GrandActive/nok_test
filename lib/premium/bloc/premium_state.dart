part of 'premium_bloc.dart';

@freezed
class PremiumState with _$PremiumState {
  const factory PremiumState.loading() = _Loading;

  const factory PremiumState.enabled() = _Enabled;

  const factory PremiumState.disabled() = _Disabled;
}
