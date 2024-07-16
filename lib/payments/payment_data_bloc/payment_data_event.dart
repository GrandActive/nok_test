part of 'payment_data_bloc.dart';

@freezed
class PaymentDataEvent with _$PaymentDataEvent {
  const factory PaymentDataEvent.started() = _Started;
}
