import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nok_test/payments/data/i_payments_repository.dart';
import 'package:nok_test/payments/data/models/order_status.dart';

part 'payment_status_bloc.freezed.dart';
part 'payment_status_event.dart';
part 'payment_status_state.dart';

@injectable
class PaymentStatusBloc extends Bloc<PaymentStatusEvent, PaymentStatusState> {
  PaymentStatusBloc(this._repository) : super(const PaymentStatusState.noCurrentPayment()) {
    on<PaymentStatusEvent>((event, emit) async {
      await event.when(
        requested: () async {
          try {
            final status = await _repository.getPaymentStatus();
            switch (status) {
              case OrderStatus.paid:
                emit(const PaymentStatusState.paid());
                break;
              case OrderStatus.inProgress:
                final time = state.maybeWhen(
                  waiting: (time) => time + const Duration(seconds: 1),
                  orElse: () => const Duration(),
                );

                if (time >= const Duration(minutes: 1)) {
                  emit(const PaymentStatusState.timeOut());
                  return;
                }

                emit(PaymentStatusState.waiting(time: time));
                await Future.delayed(
                  const Duration(seconds: 1),
                  () => add(const PaymentStatusEvent.requested()),
                );
                break;
              case OrderStatus.cancelled:
                emit(const PaymentStatusState.cancelled());
                break;
              case OrderStatus.expired:
                emit(const PaymentStatusState.timeOut());
                break;
              case OrderStatus.noOrder:
                emit(const PaymentStatusState.noCurrentPayment());
            }
          } catch (e) {
            emit(const PaymentStatusState.noCurrentPayment());
          }
        },
      );
    });
  }

  final IPaymentsRepository _repository;
}
