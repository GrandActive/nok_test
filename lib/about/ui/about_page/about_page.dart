import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/premium/bloc/premium_bloc.dart';
import 'package:nok_test/premium/ui/premium_page/widgets/premium_status_info.dart';
import 'package:nok_test/utils/list_separated_extension.dart';

import 'widgets/widgets.dart';

@RoutePage()
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isPaid = context.watch<PremiumBloc>().state.maybeWhen(
          enabled: () => true,
          orElse: () => false,
        );

    return Scaffold(
      appBar: AppBar(
        title: const Text('О приложении'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 24),
        children: [
          if (!isPaid) ...[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: PremiumStatusInfo(),
            ),
            SizedBox(height: 16),
          ],
          ...[
            const AuthSection(),
            const PrivacyPolicyButton(),
            const SupportButton(),
          ].separatedBy(const Divider(
            height: 0,
            indent: 16,
            endIndent: 16,
          )),
          if (isPaid) ...[
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: PremiumStatusInfo(),
            ),
          ],
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: AppVersion(),
          ),
        ],
      ),
    );
  }
}
