import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_payment_status_body.freezed.dart';
part 'get_payment_status_body.g.dart';

@freezed
class GetPaymentStatusBody with _$GetPaymentStatusBody {
  const factory GetPaymentStatusBody({
    required String userToken,
    required String qualificationId,
  }) = _GetPaymentStatusBody;

  factory GetPaymentStatusBody.fromJson(Map<String, dynamic> json) =>
      _$GetPaymentStatusBodyFromJson(json);
}
