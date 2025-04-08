// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_payment_status_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPaymentStatusBodyImpl _$$GetPaymentStatusBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPaymentStatusBodyImpl(
      userToken: json['userToken'] as String,
      qualificationId: json['qualificationId'] as String,
    );

Map<String, dynamic> _$$GetPaymentStatusBodyImplToJson(
        _$GetPaymentStatusBodyImpl instance) =>
    <String, dynamic>{
      'userToken': instance.userToken,
      'qualificationId': instance.qualificationId,
    };
