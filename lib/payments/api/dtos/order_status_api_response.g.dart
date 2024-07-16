// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderStatusApiResponseImpl _$$OrderStatusApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderStatusApiResponseImpl(
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$OrderStatusApiResponseImplToJson(
        _$OrderStatusApiResponseImpl instance) =>
    <String, dynamic>{
      'status': _$OrderStatusEnumMap[instance.status]!,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.noOrder: 'NO_ORDER',
  OrderStatus.inProgress: 'NEW',
  OrderStatus.cancelled: 'CANCELLED',
  OrderStatus.expired: 'EXPIRED',
  OrderStatus.paid: 'PAID',
};
