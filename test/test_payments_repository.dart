import 'package:nok_test/payments/data/i_payments_repository.dart';
import 'package:nok_test/payments/data/models/order_status.dart';
import 'package:nok_test/payments/data/models/payment_data.dart';

class TestPaymentsRepository implements IPaymentsRepository {
  OrderStatus _status = OrderStatus.noOrder;

  void setPaymentStatus(OrderStatus status) {
    _status = status;
  }

  @override
  Future<OrderStatus> getPaymentStatus() async {
    return _status;
  }

  @override
  Future<PaymentData> getPaymentData() async {
    final alreadyPaid = _status == OrderStatus.paid;

    return PaymentData(
      alreadyPaid: alreadyPaid,
      publicId: 'publicId',
      amount: 199,
      orderId: 'orderId',
    );
  }
}
