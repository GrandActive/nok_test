import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nok_test/navigation.dart';

@RoutePage()
class PasswordRestorationResultPage extends StatelessWidget {
  const PasswordRestorationResultPage({
    super.key,
    required this.email,
  });

  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AutoLeadingButton(),
        title: const Text('Восстановление пароля'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'На адрес $email отправлено письмо с инструкциями по восстановлению пароля. Если письмо не пришло, значит аккаунт $email не зарегистрирован.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            FilledButton(
              onPressed: () {
                context.router.navigate(const LoginRoute());
              },
              child: const Text('Войти ещё раз'),
            )
          ],
        ),
      ),
    );
  }
}
