import 'package:freezed_annotation/freezed_annotation.dart';

part 'qr_code.freezed.dart';
part 'qr_code.g.dart';

@freezed
class QrCode with _$QrCode {
  const factory QrCode({
    required String id,
    required String url,
  }) = _QrCode;

  factory QrCode.fromJson(Map<String, dynamic> json) => _$QrCodeFromJson(json);
}
