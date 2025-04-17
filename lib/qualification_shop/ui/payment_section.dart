import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/payments/ui/payment_button.dart';
import 'package:nok_test/qualification_shop/bloc/user_purchases_bloc/user_purchases_bloc.dart';
import 'package:nok_test/specializations/models/qualification.dart';
import 'package:nok_test/styles/app_text_styles.dart';
import 'package:nok_test/styles/colors.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({
    super.key,
    required this.qualification,
  });

  final Qualification qualification;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserPurchasesBloc, UserPurchasesState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const CircularProgressIndicator(),
          failure: (message) {
            return Column(
              children: [
                Text('Ошибка загрузки информации о покупке'),
                SizedBox(height: 8),
                FilledButton(
                  onPressed: () {},
                  child: Text('Повторить'),
                )
              ],
            );
          },
          success: (qualificationIds) {
            final isPurchased = qualificationIds.contains(qualification.id);
            return isPurchased
                ? const Text(
                    'Вы уже приобрели платную версию, оплата не требуется',
                    style: AppTextStyles.body1,
                    textAlign: TextAlign.center,
                  )
                : Column(
                    children: [
                      Row(
                        children: [
                          Text('Цена', style: AppTextStyles.body1),
                          SizedBox(width: 8),
                          Text(
                            "${qualification.cost} руб.",
                            style: AppTextStyles.body1.copyWith(color: primaryColor),
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      Align(
                        alignment: Alignment.center,
                        child: PaymentButton(qualification: qualification),
                      ),
                    ],
                  );
          },
        );
      },
    );
  }
}
