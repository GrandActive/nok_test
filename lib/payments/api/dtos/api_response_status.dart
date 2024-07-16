import 'package:freezed_annotation/freezed_annotation.dart';

enum ApiResponseStatus {
  @JsonValue('OK') ok,
  @JsonValue('error') error,
}