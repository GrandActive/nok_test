// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentDataImpl _$$PaymentDataImplFromJson(Map<String, dynamic> json) =>
    _$PaymentDataImpl(
      alreadyPaid: json['alreadyPaid'] as bool,
      formUrl: json['formUrl'] as String,
    );

Map<String, dynamic> _$$PaymentDataImplToJson(_$PaymentDataImpl instance) =>
    <String, dynamic>{
      'alreadyPaid': instance.alreadyPaid,
      'formUrl': instance.formUrl,
    };
