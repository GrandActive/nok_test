import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_payment_data_body.freezed.dart';
part 'get_payment_data_body.g.dart';

@freezed
class GetPaymentDataBody with _$GetPaymentDataBody {
  const factory GetPaymentDataBody({
    required String userToken,
    required String qualificationId,
  }) = _GetPaymentDataBody;

  factory GetPaymentDataBody.fromJson(Map<String, dynamic> json) =>
      _$GetPaymentDataBodyFromJson(json);
}
