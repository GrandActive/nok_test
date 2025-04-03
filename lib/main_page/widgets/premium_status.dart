import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/qualification_shop/bloc/qualification_premium_status_bloc/qualification_premium_status_bloc.dart';
import 'package:nok_test/qualification_shop/ui/premium_banner.dart';

class PremiumStatus extends StatelessWidget {
  const PremiumStatus({super.key});

  @override
  Widget build(BuildContext context) {
    final (qualification, isPurchased) = context.watch<QualificationPremiumStatusBloc>().state.when(
          initial: () => (null, null),
          success: (qualification, isPurchased) => (qualification, isPurchased),
          loading: (qualification) => (qualification, null),
          failure: (qualification, message) => (qualification, null),
        );

    if (qualification == null || (isPurchased ?? true)) return const SizedBox.shrink();

    return Column(
      children: [
        PremiumBanner(cost: qualification.cost),
        SizedBox(height: 40),
      ],
    );
  }
}
