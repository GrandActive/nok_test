// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentDataImpl _$$PaymentDataImplFromJson(Map<String, dynamic> json) =>
    _$PaymentDataImpl(
      alreadyPaid: json['alreadyPaid'] as bool,
      publicId: json['publicId'] as String,
      amount: (json['amount'] as num).toDouble(),
      orderId: json['orderId'] as String,
      formUrl: json['formUrl'] as String,
    );

Map<String, dynamic> _$$PaymentDataImplToJson(_$PaymentDataImpl instance) =>
    <String, dynamic>{
      'alreadyPaid': instance.alreadyPaid,
      'publicId': instance.publicId,
      'amount': instance.amount,
      'orderId': instance.orderId,
      'formUrl': instance.formUrl,
    };
