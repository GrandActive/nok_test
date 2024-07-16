import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nok_test/payments/data/models/order_status.dart';

part 'order_status_api_response.freezed.dart';
part 'order_status_api_response.g.dart';

@freezed
class OrderStatusApiResponse with _$OrderStatusApiResponse {
  const factory OrderStatusApiResponse({
    required OrderStatus status,
  }) = _OrderStatusApiResponse;

  factory OrderStatusApiResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusApiResponseFromJson(json);
}
