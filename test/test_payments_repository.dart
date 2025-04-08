import 'package:nok_test/payments/data/models/order_status.dart';
import 'package:nok_test/payments/data/models/payment_data.dart';
import 'package:nok_test/payments/data/payments_repository.dart';
import 'package:nok_test/specializations/models/qualification.dart';

class TestPaymentsRepository implements PaymentsRepository {
  OrderStatus _status = OrderStatus.noOrder;

  void setPaymentStatus(OrderStatus status) {
    _status = status;
  }

  @override
  Future<OrderStatus> getPaymentStatus(String qualificationId) async {
    return _status;
  }

  @override
  Future<PaymentData> getPaymentData(Qualification qualification) async {
    final alreadyPaid = _status == OrderStatus.paid;

    return PaymentData(
      alreadyPaid: alreadyPaid,
      formUrl: 'formUrl',
    );
  }
}
