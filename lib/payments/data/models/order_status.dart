import 'package:freezed_annotation/freezed_annotation.dart';

enum OrderStatus {
  @JsonValue('NO_ORDER')
  noOrder,
  @JsonValue('NEW')
  inProgress,
  @JsonValue('CANCELLED')
  cancelled,
  @JsonValue('EXPIRED')
  expired,
  @JsonValue('PAID')
  paid,
}
