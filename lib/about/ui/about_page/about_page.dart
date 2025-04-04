import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:nok_test/navigation.dart';
import 'package:nok_test/qualification_shop/bloc/qualification_premium_status_bloc/qualification_premium_status_bloc.dart';
import 'package:nok_test/qualification_shop/ui/premium_banner.dart';
import 'package:nok_test/specializations/bloc/specializations_bloc/specializations_bloc.dart';
import 'package:nok_test/styles/app_text_styles.dart';
import 'package:nok_test/utils/list_separated_extension.dart';

import 'widgets/widgets.dart';

@RoutePage()
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<AuthBloc>().state.user;
    final isAuthenticated = user != null;

    final isPaid = context.watch<QualificationPremiumStatusBloc>().state.maybeWhen(
          success: (qualification, isPurchased) => isPurchased,
          orElse: () => false,
        );

    final (minQualificationCost, allCostsEqual) =
        context.watch<SpecializationsBloc>().state.whenOrNull(
              success: (specializations) {
                final allCosts = specializations.expand((s) => s.qualifications).map((q) => q.cost);

                final minCost = allCosts.reduce((curMin, cost) => min(curMin, cost));
                final allCostsEqual = allCosts.every((c) => c == minCost);
                return (minCost, allCostsEqual);
              },
            ) ??
            (null, true);

    return Scaffold(
      appBar: AppBar(
        title: const Text('О приложении'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          children: [
            if (!isPaid && minQualificationCost != null) ...[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: PremiumBanner(
                  cost: minQualificationCost,
                  costAsLowerLimit: !allCostsEqual,
                  onTap: () => context.router.push(QualificationShopListRoute()),
                ),
              ),
              SizedBox(height: 40),
            ],
            if (isAuthenticated) ...[
              Align(
                alignment: Alignment.center,
                child: Text(
                  user.email ?? '',
                  style: AppTextStyles.title3,
                ),
              ),
              SizedBox(height: 40),
            ],
            ...[
              if (isAuthenticated) UserPurchasesButton() else LoginButton(),
              const SupportButton(),
              const PrivacyPolicyButton(),
              if (isAuthenticated) LogoutButton(),
            ].separatedBy(const Divider(
              height: 0,
              indent: 16,
              endIndent: 16,
            )),
            const SizedBox(height: 16),
            Spacer(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: AppVersion(),
            ),
          ],
        ),
      ),
    );
  }
}
