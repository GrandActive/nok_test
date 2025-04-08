import 'package:bloc_test/bloc_test.dart';
import 'package:nok_test/payments/data/models/order_status.dart';
import 'package:nok_test/payments/payment_status_bloc/payment_status_bloc.dart';
import 'package:test/test.dart';

import 'test_payments_repository.dart';

void main() {
  group(PaymentStatusBloc, () {
    late PaymentStatusBloc bloc;
    late TestPaymentsRepository repository;

    setUp(() {
      repository = TestPaymentsRepository();
      bloc = PaymentStatusBloc(repository);
    });

    test('payment status correct initial state', () {
      expect(bloc.state, equals(const PaymentStatusState.noCurrentPayment()));
    });

    blocTest(
      'payment status request retry if payment is still in progress',
      setUp: () {
        repository.setPaymentStatus(OrderStatus.inProgress);
      },
      build: () => bloc,
      seed: () => const PaymentStatusState.noCurrentPayment(),
      act: (bloc) => bloc.add(PaymentStatusEvent.requested(qualificationId: 'testId')),
      expect: () => [const PaymentStatusState.waiting(time: Duration())],
    );

    blocTest(
      'payment status waiting time out after 1 minute',
      setUp: () {
        repository.setPaymentStatus(OrderStatus.inProgress);
      },
      build: () => bloc,
      seed: () => const PaymentStatusState.waiting(time: Duration(minutes: 1)),
      act: (bloc) => bloc.add(PaymentStatusEvent.requested(qualificationId: 'testId')),
      expect: () => [const PaymentStatusState.timeOut()],
    );
  });
}
