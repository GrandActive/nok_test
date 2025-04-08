// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_payment_data_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPaymentDataBodyImpl _$$GetPaymentDataBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPaymentDataBodyImpl(
      userToken: json['userToken'] as String,
      qualificationId: json['qualificationId'] as String,
    );

Map<String, dynamic> _$$GetPaymentDataBodyImplToJson(
        _$GetPaymentDataBodyImpl instance) =>
    <String, dynamic>{
      'userToken': instance.userToken,
      'qualificationId': instance.qualificationId,
    };
