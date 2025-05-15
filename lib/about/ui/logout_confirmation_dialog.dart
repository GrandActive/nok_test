import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:nok_test/styles/colors.dart';

class LogoutConfirmationDialog extends StatelessWidget {
  const LogoutConfirmationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      surfaceTintColor: Colors.transparent,
      title: const Text('Вы точно хотите выйти?'),
      content:
          const Text('При выходе из аккаунта вам не будут доступны платные функции приложения.'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Отмена'),
        ),
        TextButton(
          style: ButtonStyle(
            foregroundColor: const WidgetStatePropertyAll(wrongAnswerColor),
            overlayColor: WidgetStatePropertyAll(wrongAnswerColor.withOpacity(0.15)),
          ),
          onPressed: () {
            context.read<AuthBloc>().add(const AuthEvent.logOut());
            Navigator.of(context).pop();
          },
          child: const Text('Выйти'),
        ),
      ],
    );
  }
}
