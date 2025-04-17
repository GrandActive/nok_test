import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/navigation.dart';
import 'package:nok_test/qualification_shop/bloc/qualification_premium_status_bloc/qualification_premium_status_bloc.dart';
import 'package:nok_test/qualification_shop/ui/premium_banner.dart';
import 'package:nok_test/specializations/bloc/specialization_select_bloc/specialization_select_bloc.dart';

class PremiumStatus extends StatelessWidget {
  const PremiumStatus({super.key});

  @override
  Widget build(BuildContext context) {
    final specialization = context.watch<SpecializationSelectBloc>().state.selectedSpecialization;

    final premiumState = context.watch<QualificationPremiumStatusBloc>().state;

    if (specialization == null ||
        premiumState.qualification == null ||
        (premiumState.isPurchased ?? true)) {
      return const SizedBox.shrink();
    }

    return Column(
      children: [
        PremiumBanner(
          cost: premiumState.qualification!.cost,
          onTap: () => context.router.push(QualificationShopRoute(
            specialization: specialization,
            qualification: premiumState.qualification!,
            bought: false,
          )),
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
