import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nok_test/payments/api/payments_api.dart';

@module
abstract class InjectionModule {
  Dio get dio => Dio();

  PaymentsApi get paymentsApi => PaymentsApi(dio);
}
