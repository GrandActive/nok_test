import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:nok_test/auth/data/auth_repository.dart';
import 'package:nok_test/payments/api/dtos/user_token.dart';
import 'package:nok_test/payments/api/payments_api.dart';
import 'package:nok_test/payments/data/i_payments_repository.dart';
import 'package:nok_test/payments/data/models/order_status.dart';

import 'models/payment_data.dart';

@Injectable(as: IPaymentsRepository)
class PaymentsRepository implements IPaymentsRepository {
  PaymentsRepository(this._api, this._authRepository);

  final PaymentsApi _api;
  final AuthRepository _authRepository;

  Future<String> get _userToken async {
    final token = await _authRepository.getUserToken();
    if (token == null) throw Exception('auth is required');
    return token;
  }

  @override
  Future<PaymentData> getPaymentData() async {
    final userTokenJson = UserToken(await _userToken).toJson();
    final apiResponse = await _api.getPaymentData(userTokenJson);
    return apiResponse;
  }

  @override
  Future<OrderStatus> getPaymentStatus() async {
    final apiResponse = await _api.getPaymentStatus(await _userToken);
    return apiResponse.status;
  }
}
