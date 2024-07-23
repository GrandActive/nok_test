import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/injection.dart';
import 'package:nok_test/payments/data/models/payment_data.dart';
import 'package:nok_test/payments/payment_data_bloc/payment_data_bloc.dart';
import 'package:nok_test/premium/bloc/premium_bloc.dart';
import 'package:nok_test/styles/app_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class PaymentButton extends StatelessWidget {
  const PaymentButton({
    super.key,
  });

  void _startPayment(PaymentData data) {
    launchUrl(Uri(
      scheme: 'https',
      host: 'pay.raif.ru',
      path: 'pay',
      queryParameters: {
        'publicId': data.publicId,
        'amount': data.amount.toString(),
        'orderId': data.orderId,
        'successUrl': 'app://nok.test/payment/result',
        'successSbpUrl': 'app://nok.test/payment/result',
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PaymentDataBloc>(
      create: (context) => getIt()..add(const PaymentDataEvent.started()),
      child: BlocConsumer<PaymentDataBloc, PaymentDataState>(
        listener: (context, state) {
          state.whenOrNull(
            alreadyPaid: () {
              context.read<PremiumBloc>().add(const PremiumEvent.statusRequested());
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            success: (data) => FilledButton(
              onPressed: () => _startPayment(data),
              child: const Text('Оплатить'),
            ),
            failure: (message) => const Text(
              'Ошибка загрузки данных для оплаты',
              style: AppTextStyles.body1,
            ),
            orElse: () => const CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
