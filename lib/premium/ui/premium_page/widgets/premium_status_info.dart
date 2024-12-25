import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/premium/bloc/premium_bloc.dart';
import 'package:nok_test/premium/ui/premium_page/widgets/premium_banner.dart';
import 'package:nok_test/styles/app_text_styles.dart';

class PremiumStatusInfo extends StatelessWidget {
  const PremiumStatusInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PremiumBloc, PremiumState>(
      builder: (context, state) {
        return state.when(
          loading: () => const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [CircularProgressIndicator()],
          ),
          enabled: () => const Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'У вас установлена платная версия',
                  style: AppTextStyles.body1,
                ),
              ),
              SizedBox(height: 16),
              PremiumBanner(
                withDescription: true,
                paid: true,
              ),
            ],
          ),
          disabled: () => const PremiumBanner(),
        );
      },
    );
  }
}
