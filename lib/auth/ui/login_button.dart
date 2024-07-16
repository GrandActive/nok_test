import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nok_test/common/widgets/app_filled_button.dart';
import 'package:nok_test/navigation.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppFilledButton(
      child: const Text('Войти'),
      onPressed: () => context.router.push(const AuthRoute()),
    );
  }
}
