import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nok_test/payments/api/dtos/api_response_status.dart';

part 'api_reponse.freezed.dart';

part 'api_reponse.g.dart';

@Freezed(genericArgumentFactories: true)
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse({
    required ApiResponseStatus status,
    required int statusCode,
    required T bankResponse,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$ApiResponseFromJson(json, fromJsonT);
}
