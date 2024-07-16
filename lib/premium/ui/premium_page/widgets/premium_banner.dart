import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nok_test/navigation.dart';
import 'package:nok_test/styles/app_text_styles.dart';
import 'package:nok_test/styles/colors.dart';

import 'premium_description_list_item.dart';

class PremiumBanner extends StatelessWidget {
  const PremiumBanner({
    super.key,
    this.withDescription = false,
    this.paid = false,
    this.disabled = false,
  });

  final bool withDescription;
  final bool paid;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.all(Radius.circular(8));

    return InkWell(
      onTap: paid || disabled ? null : () => context.router.push(const PremiumRoute()),
      borderRadius: borderRadius,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: primaryColor),
          borderRadius: borderRadius,
        ),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: withDescription ? 24 : 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (withDescription) ...[
              const Text(
                'Платная версия включает в себя:',
                style: AppTextStyles.body1,
              ),
              const SizedBox(height: 16),
              const PremiumDescriptionListItem(
                text: 'просмотр правильных ответов по завершению экзаменационного теста;',
              ),
              const SizedBox(height: 8),
              const PremiumDescriptionListItem(
                text: 'тренировочный режим тестирования, '
                    'в котором результат ответа будет отображен сразу после ввода ответа.',
              ),
            ],
            if (!paid) ...[
              if (withDescription) const SizedBox(height: 24),
              Row(
                mainAxisAlignment:
                    withDescription ? MainAxisAlignment.end : MainAxisAlignment.spaceBetween,
                children: [
                  if (withDescription)
                    const Text('Цена', style: AppTextStyles.body1)
                  else
                    const Text('Платная версия', style: AppTextStyles.body1),
                  const SizedBox(width: 16),
                  Container(
                    decoration: const BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      '199 руб.',
                      style: AppTextStyles.body1.copyWith(color: Colors.white),
                    ),
                  )
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
