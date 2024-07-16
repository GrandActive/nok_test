import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/premium/bloc/premium_bloc.dart';
import 'package:nok_test/premium/ui/premium_page/widgets/premium_banner.dart';

class PremiumStatus extends StatelessWidget {
  const PremiumStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PremiumBloc, PremiumState>(
      builder: (context, state) {
        return state.maybeWhen(
          disabled: () => const Column(
            children: [
              PremiumBanner(),
              SizedBox(height: 24),
            ],
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
