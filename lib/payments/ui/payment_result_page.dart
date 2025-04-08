import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/common/widgets/app_filled_button.dart';
import 'package:nok_test/injection.dart';
import 'package:nok_test/payments/payment_status_bloc/payment_status_bloc.dart';
import 'package:nok_test/styles/app_text_styles.dart';
import 'package:nok_test/styles/colors.dart';

@RoutePage()
class PaymentResultPage extends StatelessWidget implements AutoRouteWrapper {
  const PaymentResultPage({
    super.key,
    @PathParam() required this.qualificationId,
  });

  final String qualificationId;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<PaymentStatusBloc>(
      create: (context) => getIt()
        ..add(PaymentStatusEvent.requested(
          qualificationId: qualificationId,
        )),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AutoLeadingButton(),
        title: const Text('Результат оплаты'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: BlocBuilder<PaymentStatusBloc, PaymentStatusState>(
            builder: (context, state) {
              return state.when(
                waiting: (time) => const CircularProgressIndicator(),
                paid: () => Column(
                  children: [
                    const Text(
                      'Оплата прошла успешно',
                      style: AppTextStyles.title1,
                    ),
                    const SizedBox(height: 40),
                    const Icon(Icons.check, color: correctAnswerColor, size: 82),
                    const SizedBox(height: 50),
                    AppFilledButton(
                      child: const Text('Вернуться на главную'),
                      onPressed: () => context.router.popUntilRoot(),
                    )
                  ],
                ),
                cancelled: () {
                  return Column(
                    children: [
                      const Text(
                        'Ошибка оплаты',
                        style: AppTextStyles.title1,
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Платеж отменен',
                        style: AppTextStyles.body1,
                      ),
                      const SizedBox(height: 40),
                      const Icon(Icons.close, color: Colors.red, size: 82),
                      const SizedBox(height: 50),
                      AppFilledButton(
                        child: const Text('Вернуться на главную'),
                        onPressed: () => context.router.popUntilRoot(),
                      )
                    ],
                  );
                },
                noCurrentPayment: () {
                  return Column(
                    children: [
                      const Text(
                        'Ошибка оплаты',
                        style: AppTextStyles.title1,
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Нет текущего платежа',
                        style: AppTextStyles.body1,
                      ),
                      const SizedBox(height: 40),
                      const Icon(Icons.close, color: Colors.red, size: 82),
                      const SizedBox(height: 50),
                      AppFilledButton(
                        child: const Text('Вернуться на главную'),
                        onPressed: () => context.router.popUntilRoot(),
                      )
                    ],
                  );
                },
                timeOut: () {
                  return Column(
                    children: [
                      const Text(
                        'Ошибка оплаты',
                        style: AppTextStyles.title1,
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Вышло время ожидания',
                        style: AppTextStyles.body1,
                      ),
                      const SizedBox(height: 40),
                      const Icon(Icons.close, color: Colors.red, size: 82),
                      const SizedBox(height: 50),
                      AppFilledButton(
                        child: const Text('Вернуться на главную'),
                        onPressed: () => context.router.popUntilRoot(),
                      )
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
