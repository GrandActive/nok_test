import 'package:flutter/material.dart';
import 'package:nok_test/about/ui/logout_confirmation_dialog.dart';
import 'package:nok_test/common/widgets/borderless_button.dart';
import 'package:nok_test/styles/colors.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BorderlessButton(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => const LogoutConfirmationDialog(),
        );
      },
      text: 'Выйти из аккаунта',
      icon: Icons.logout_outlined,
      textColor: wrongAnswerColor,
      iconColor: wrongAnswerColor,
    );
  }
}
