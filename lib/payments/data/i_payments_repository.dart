import 'package:nok_test/payments/data/models/order_status.dart';
import 'package:nok_test/payments/data/models/payment_data.dart';

abstract class IPaymentsRepository {
  Future<OrderStatus> getPaymentStatus();

  Future<PaymentData> getPaymentData();
}
