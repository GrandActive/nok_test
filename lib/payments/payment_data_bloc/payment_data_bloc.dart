import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nok_test/payments/data/i_payments_repository.dart';
import 'package:nok_test/payments/data/models/payment_data.dart';

part 'payment_data_bloc.freezed.dart';
part 'payment_data_event.dart';
part 'payment_data_state.dart';

@injectable
class PaymentDataBloc extends Bloc<PaymentDataEvent, PaymentDataState> {
  PaymentDataBloc(this._repository) : super(const PaymentDataState.initial()) {
    on<PaymentDataEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(const PaymentDataState.loading());
          try {
            final data = await _repository.getPaymentData();
            if (data.alreadyPaid) {
              emit(PaymentDataState.alreadyPaid());
            } else {
              emit(PaymentDataState.success(data: data));
            }
          } catch (e) {
            emit(PaymentDataState.failure(message: e.toString()));
          }
        },
      );
    });
  }

  final IPaymentsRepository _repository;
}
