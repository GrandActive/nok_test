part of 'premium_bloc.dart';

@freezed
class PremiumEvent with _$PremiumEvent {
  const factory PremiumEvent.statusRequested() = _StatusRequested;
  const factory PremiumEvent.reset() = _Reset;
}
