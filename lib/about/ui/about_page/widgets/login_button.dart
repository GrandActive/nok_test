import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nok_test/common/widgets/borderless_button.dart';
import 'package:nok_test/navigation.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BorderlessButton(
      onTap: () {
        context.router.push(const AuthRoute());
      },
      text: 'Войти в аккаунт',
      icon: Icons.login_outlined,
    );
  }
}
