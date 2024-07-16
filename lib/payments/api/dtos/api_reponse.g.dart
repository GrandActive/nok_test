// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiResponseImpl<T> _$$ApiResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ApiResponseImpl<T>(
      status: $enumDecode(_$ApiResponseStatusEnumMap, json['status']),
      statusCode: (json['statusCode'] as num).toInt(),
      bankResponse: fromJsonT(json['bankResponse']),
    );

Map<String, dynamic> _$$ApiResponseImplToJson<T>(
  _$ApiResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'status': _$ApiResponseStatusEnumMap[instance.status]!,
      'statusCode': instance.statusCode,
      'bankResponse': toJsonT(instance.bankResponse),
    };

const _$ApiResponseStatusEnumMap = {
  ApiResponseStatus.ok: 'OK',
  ApiResponseStatus.error: 'error',
};
