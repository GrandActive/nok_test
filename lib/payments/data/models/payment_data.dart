import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_data.freezed.dart';
part 'payment_data.g.dart';

@freezed
class PaymentData with _$PaymentData {
  const factory PaymentData({
    required bool alreadyPaid,
    required String publicId,
    required double amount,
    required String orderId,
  }) = _PaymentData;

  factory PaymentData.fromJson(Map<String, dynamic> json) => _$PaymentDataFromJson(json);
}
