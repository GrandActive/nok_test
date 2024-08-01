import 'package:dio/dio.dart';
import 'package:nok_test/payments/api/dtos/order_status_api_response.dart';
import 'package:nok_test/payments/data/models/payment_data.dart';
import 'package:retrofit/retrofit.dart';

part 'payments_api.g.dart';

@RestApi(baseUrl: 'http://nok-trainer.ru/api/payment/')
abstract class PaymentsApi {
  factory PaymentsApi(Dio dio, {String baseUrl}) = _PaymentsApi;

  @POST('/')
  Future<PaymentData> getPaymentData(
    @Body() Map<String, dynamic> userTokenJson,
  );

  @POST('/status')
  Future<OrderStatusApiResponse> getPaymentStatus(
    @Body() String userToken,
  );
}
