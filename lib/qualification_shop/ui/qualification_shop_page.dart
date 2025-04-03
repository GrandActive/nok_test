import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:nok_test/common/widgets/app_filled_button.dart';
import 'package:nok_test/navigation.dart';
import 'package:nok_test/premium/ui/premium_page/widgets/premium_description_list_item.dart';
import 'package:nok_test/qualification_shop/ui/payment_section.dart';
import 'package:nok_test/specializations/models/qualification.dart';
import 'package:nok_test/specializations/models/specialization.dart';
import 'package:nok_test/styles/app_text_styles.dart';
import 'package:nok_test/styles/colors.dart';

@RoutePage()
class QualificationShopPage extends StatelessWidget {
  const QualificationShopPage({
    super.key,
    required this.specialization,
    required this.qualification,
    this.bought = false,
  });

  final Specialization specialization;
  final Qualification qualification;
  final bool bought;

  @override
  Widget build(BuildContext context) {
    final isAuthenticated = context.watch<AuthBloc>().state.isAuthenticated;

    return Scaffold(
      appBar: AppBar(
        leading: AutoLeadingButton(),
        title: Text('Платная версия'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        children: [
          Text('Профессиональный стандарт:', style: AppTextStyles.title2),
          Text(specialization.name, style: AppTextStyles.body1),
          SizedBox(height: 16),
          Text('Квалификация:', style: AppTextStyles.title2),
          Text(qualification.name, style: AppTextStyles.body1),
          SizedBox(height: 24),
          const Text(
            'Платная версия включает в себя:',
            style: AppTextStyles.body1,
          ),
          const SizedBox(height: 16),
          const PremiumDescriptionListItem(
            text: 'просмотр правильных ответов по завершению экзаменационного теста',
          ),
          const SizedBox(height: 16),
          const PremiumDescriptionListItem(
            text: 'тренировочный режим тестирования, '
                'в котором результат ответа будет отображен сразу после ввода ответа',
          ),
          const SizedBox(height: 16),
          const PremiumDescriptionListItem(
            text: 'доступ к списку всех вопросов, '
                'вы сможете просмотреть все вопросы по порядку с правильными ответами',
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Text('Цена', style: AppTextStyles.body1),
              SizedBox(width: 8),
              Text(
                "${qualification.cost} руб.",
                style: AppTextStyles.body1.copyWith(color: primaryColor),
              ),
            ],
          ),
          if (isAuthenticated) ...[
            const SizedBox(height: 24),
            const PaymentSection(),
          ] else ...[
            const SizedBox(height: 24),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Для оплаты необходимо войти в аккаунт',
                  style: AppTextStyles.body1,
                ),
                SizedBox(height: 8),
                Text(
                  'Если вы уже покупали платную версию, то войдите в аккаунт, чтобы её активировать.',
                  style: AppTextStyles.body1,
                ),
              ],
            ),
            const SizedBox(height: 24),
            AppFilledButton(
              onPressed: () {
                context.router.push(const AuthRoute());
              },
              child: const Text('Войти в аккаунт'),
            ),
          ]
        ],
      ),
    );
  }
}
