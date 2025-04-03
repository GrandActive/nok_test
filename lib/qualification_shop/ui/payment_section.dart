import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/payments/ui/payment_button.dart';
import 'package:nok_test/qualification_shop/bloc/qualification_premium_status_bloc/qualification_premium_status_bloc.dart';
import 'package:nok_test/styles/app_text_styles.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QualificationPremiumStatusBloc, QualificationPremiumStatusState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const CircularProgressIndicator(),
          failure: (qualification, message) {
            return Column(
              children: [
                Text('Ошибка загрузки информации о покупке'),
                FilledButton(
                  onPressed: () {},
                  child: Text('Повторить'),
                )
              ],
            );
          },
          success: (qualification, isPurchased) => isPurchased
              ? const Text(
                  'Вы уже приобрели платную версию, оплата не требуется',
                  style: AppTextStyles.body1,
                  textAlign: TextAlign.center,
                )
              : const PaymentButton(),
        );
      },
    );
  }
}
