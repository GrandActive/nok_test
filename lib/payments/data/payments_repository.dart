import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:nok_test/auth/data/auth_repository.dart';
import 'package:nok_test/payments/api/dtos/get_payment_data_body.dart';
import 'package:nok_test/payments/api/dtos/get_payment_status_body.dart';
import 'package:nok_test/payments/api/payments_api.dart';
import 'package:nok_test/payments/data/models/order_status.dart';
import 'package:nok_test/specializations/models/qualification.dart';

import 'models/payment_data.dart';

@injectable
class PaymentsRepository {
  PaymentsRepository(this._api, this._authRepository);

  final PaymentsApi _api;
  final AuthRepository _authRepository;

  Future<String> get _userToken async {
    final token = await _authRepository.getUserToken();
    if (token == null) throw Exception('auth is required');
    return token;
  }

  Future<PaymentData> getPaymentData(Qualification qualification) async {
    final body = GetPaymentDataBody(
      userToken: await _userToken,
      qualificationId: qualification.id,
    );
    final apiResponse = await _api.getPaymentData(body);
    return apiResponse;
  }

  Future<OrderStatus> getPaymentStatus(String qualificationId) async {
    final body = GetPaymentStatusBody(
      userToken: await _userToken,
      qualificationId: qualificationId,
    );
    final apiResponse = await _api.getPaymentStatus(body);
    return apiResponse.status;
  }
}
