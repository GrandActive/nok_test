import 'package:flutter/material.dart';
import 'package:nok_test/common/widgets/borderless_button.dart';
import 'package:url_launcher/url_launcher.dart';

class SupportButton extends StatelessWidget {
  const SupportButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BorderlessButton(
      onTap: () {
        launchUrl(Uri(
          scheme: 'mailto',
          path: 'support@grandactive.ru',
        ));
      },
      text: 'Техническая поддержка',
      icon: Icons.mail_outline,
    );
  }
}
