import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:nok_test/payments/api/payments_api.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class InjectionModule {
  Dio get dio => Dio()..interceptors.add(PrettyDioLogger(enabled: kDebugMode));

  PaymentsApi get paymentsApi => PaymentsApi(dio);
}
