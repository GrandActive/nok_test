part of 'payment_status_bloc.dart';

@freezed
class PaymentStatusEvent with _$PaymentStatusEvent {
  const factory PaymentStatusEvent.requested({
    required String qualificationId,
  }) = _Requested;
}
