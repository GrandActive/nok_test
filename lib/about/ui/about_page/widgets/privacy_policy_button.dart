import 'package:flutter/material.dart';
import 'package:nok_test/common/widgets/borderless_button.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicyButton extends StatelessWidget {
  const PrivacyPolicyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BorderlessButton(
      onTap: () {
        launchUrl(Uri(
          scheme: 'https',
          host: 'test-gip.web.app',
          path: 'privacy_policy.html',
        ));
      },
      text: 'Политика конфиденциальности',
      icon: Icons.privacy_tip_outlined,
    );
  }
}
