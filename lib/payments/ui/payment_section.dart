import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/payments/ui/payment_button.dart';
import 'package:nok_test/premium/bloc/premium_bloc.dart';
import 'package:nok_test/styles/app_text_styles.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PremiumBloc, PremiumState>(
      builder: (context, state) {
        return state.when(
          loading: () => const CircularProgressIndicator(),
          enabled: () => const Text(
            'Вы уже приобрели платную версию, оплата не требуется',
            style: AppTextStyles.body1,
            textAlign: TextAlign.center,
          ),
          disabled: () => const PaymentButton(),
        );
      },
    );
  }
}
