import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/about/ui/logout_confirmation_dialog.dart';
import 'package:nok_test/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:nok_test/common/widgets/borderless_button.dart';
import 'package:nok_test/navigation.dart';
import 'package:nok_test/styles/app_text_styles.dart';
import 'package:nok_test/styles/colors.dart';

class AuthSection extends StatelessWidget {
  const AuthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.maybeWhen(
          authenticated: (user) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Ваш аккаунт',
                    style: AppTextStyles.body1,
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.person_outline,
                        color: Color(0xFF1976D2),
                      ),
                      const SizedBox(width: 16),
                      Text(
                        user.email ?? '',
                        style: AppTextStyles.body1.copyWith(
                          color: const Color(0xFF1976D2),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                BorderlessButton(
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
                ),
              ],
            );
          },
          orElse: () {
            return BorderlessButton(
              onTap: () {
                context.router.push(const AuthRoute());
              },
              text: 'Войти в аккаунт',
              icon: Icons.login_outlined,
            );
          },
        );
      },
    );
  }
}
