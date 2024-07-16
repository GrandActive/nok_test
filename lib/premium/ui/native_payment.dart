import 'package:flutter/services.dart';
import 'package:nok_test/payments/data/models/payment_result.dart';
import 'package:nok_test/premium/ui/premium_page/payment_dialog_result.dart';

class NativePayment {
  static const _sbpMethodChannel = MethodChannel('sbp');

  Future<PaymentResult> showPaymentDialog(String paymentUrl) async {
    final resultMap = await _sbpMethodChannel.invokeMethod<Map>(
      'showSbpDialog',
      {'link': paymentUrl},
    );

    if (resultMap == null) return const PaymentResult.cancelled();

    final resultCode = resultMap['status'];
    if (resultCode == null) return const PaymentResult.cancelled();

    final paymentResult = PaymentDialogResult.values.byName(resultCode);
    print('payment dialog result: $resultMap');
    return switch (paymentResult) {
      PaymentDialogResult.REDIRECTED_TO_BANK => const PaymentResult.redirectedToBank(),
      PaymentDialogResult.REDIRECTED_TO_DOWNLOAD_BANK => const PaymentResult.redirectedToBank(),
      PaymentDialogResult.REDIRECTED_TO_DEFAULT_BANK => const PaymentResult.redirectedToBank(),
      PaymentDialogResult.DIALOG_DISMISSED => const PaymentResult.cancelled(),
      PaymentDialogResult.REDIRECT_TO_BANK_FAILED => const PaymentResult.cancelled(),
    };
  }
}
