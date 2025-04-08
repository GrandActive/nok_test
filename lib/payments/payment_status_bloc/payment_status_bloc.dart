import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nok_test/payments/data/models/order_status.dart';
import 'package:nok_test/payments/data/payments_repository.dart';

part 'payment_status_bloc.freezed.dart';
part 'payment_status_event.dart';
part 'payment_status_state.dart';

@injectable
class PaymentStatusBloc extends Bloc<PaymentStatusEvent, PaymentStatusState> {
  PaymentStatusBloc(this._repository) : super(const PaymentStatusState.noCurrentPayment()) {
    on<PaymentStatusEvent>((event, emit) async {
      await event.when(
        requested: (qualificationId) async {
          try {
            final status = await _repository.getPaymentStatus(qualificationId);
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
                  () => add(PaymentStatusEvent.requested(qualificationId: qualificationId)),
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

  final PaymentsRepository _repository;
}
