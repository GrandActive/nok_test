part of 'payment_data_bloc.dart';

@freezed
class PaymentDataState with _$PaymentDataState {
  const factory PaymentDataState.initial() = _Initial;

  const factory PaymentDataState.loading() = _Loading;

  const factory PaymentDataState.success({
    required PaymentData data,
  }) = _Success;

  const factory PaymentDataState.alreadyPaid() = _AlreadyPaid;

  const factory PaymentDataState.failure({
    required String message,
  }) = _Failure;
}
