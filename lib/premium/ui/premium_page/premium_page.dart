import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:nok_test/common/widgets/app_filled_button.dart';
import 'package:nok_test/injection.dart';
import 'package:nok_test/navigation.dart';
import 'package:nok_test/payments/payment_status_bloc/payment_status_bloc.dart';
import 'package:nok_test/payments/ui/payment_section.dart';
import 'package:nok_test/styles/app_text_styles.dart';

import 'widgets/widgets.dart';

@RoutePage()
class PremiumPage extends StatelessWidget implements AutoRouteWrapper {
  const PremiumPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<PaymentStatusBloc>(
      create: (context) => getIt(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final authenticated = context.watch<AuthBloc>().state.maybeWhen(
          authenticated: (user) => true,
          orElse: () => false,
        );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Платная версия'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Column(
          children: [
            const PremiumBanner(
              withDescription: true,
              disabled: true,
            ),
            if (authenticated) ...[
              const SizedBox(height: 24),
              const PaymentSection(),
            ] else ...[
              const SizedBox(height: 24),
              const Text(
                'Для оплаты необходимо авторизоваться.\n\nЕсли вы уже покупали платную версию, то войдите в аккаунт, чтобы её активировать.',
                style: AppTextStyles.body1,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              AppFilledButton(
                onPressed: () {
                  context.router.push(const AuthRoute());
                },
                child: const Text('Войти в аккаунт'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
