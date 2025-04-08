import 'package:dio/dio.dart' hide Headers;
import 'package:nok_test/payments/api/dtos/get_payment_data_body.dart';
import 'package:nok_test/payments/api/dtos/get_payment_status_body.dart';
import 'package:nok_test/payments/api/dtos/order_status_api_response.dart';
import 'package:nok_test/payments/data/models/payment_data.dart';
import 'package:retrofit/retrofit.dart';

part 'payments_api.g.dart';

@RestApi(baseUrl: 'http://nok-trainer.ru/api/payment/')
abstract class PaymentsApi {
  factory PaymentsApi(Dio dio, {String baseUrl}) = _PaymentsApi;

  @POST('/')
  @Headers({
    'Content-Type': 'application/json',
  })
  Future<PaymentData> getPaymentData(
    @Body() GetPaymentDataBody body,
  );

  @POST('/status')
  @Headers({
    'Content-Type': 'application/json',
  })
  Future<OrderStatusApiResponse> getPaymentStatus(
    @Body() GetPaymentStatusBody body,
  );
}
