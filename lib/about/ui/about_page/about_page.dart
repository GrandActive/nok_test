import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nok_test/common/widgets/app_description.dart';
import 'package:nok_test/premium/ui/premium_page/widgets/premium_status_info.dart';
import 'package:nok_test/utils/list_separated_extension.dart';

import 'widgets/widgets.dart';

@RoutePage()
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('О приложении'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 24),
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: AppDescription(),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: AppVersion(),
          ),
          const SizedBox(height: 32),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: PremiumStatusInfo(),
          ),
          const SizedBox(height: 16),
          ...[
            const PrivacyPolicyButton(),
            const SupportButton(),
            const AuthSection(),
          ].separatedBy(const Divider(
            height: 0,
            indent: 16,
            endIndent: 16,
          )),
        ],
      ),
    );
  }
}
