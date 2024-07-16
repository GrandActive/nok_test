part of 'payment_status_bloc.dart';

@freezed
class PaymentStatusState with _$PaymentStatusState {
  const factory PaymentStatusState.waiting({
    required Duration time,
  }) = _Waiting;

  const factory PaymentStatusState.paid() = _Paid;

  const factory PaymentStatusState.cancelled() = _Cancelled;

  const factory PaymentStatusState.noCurrentPayment() = _NoCurrentPayment;

  const factory PaymentStatusState.timeOut() = _TimeOut;
}
