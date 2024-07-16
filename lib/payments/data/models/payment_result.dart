import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_result.freezed.dart';

@freezed
class PaymentResult with _$PaymentResult {
  const factory PaymentResult.redirectedToBank() = _Success;

  const factory PaymentResult.cancelled() = _Cancelled;
}
