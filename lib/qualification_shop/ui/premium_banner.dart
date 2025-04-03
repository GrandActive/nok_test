import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nok_test/navigation.dart';
import 'package:nok_test/styles/app_text_styles.dart';
import 'package:nok_test/styles/colors.dart';

class PremiumBanner extends StatelessWidget {
  const PremiumBanner({
    super.key,
    required this.cost,
    this.costAsLowerLimit = false,
    this.paid = false,
    this.disabled = false,
  });

  final int cost;
  final bool costAsLowerLimit;
  final bool paid;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.all(Radius.circular(8));

    return InkWell(
      onTap: paid || disabled ? null : () => context.router.push(QualificationShopListRoute()),
      borderRadius: borderRadius,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: primaryColor),
          borderRadius: borderRadius,
        ),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!paid) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Платная версия', style: AppTextStyles.body1),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    decoration: const BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      costAsLowerLimit ? 'от $cost руб.' : '$cost руб.',
                      style: AppTextStyles.body1.copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
