import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nok_test/navigation.dart';
import 'package:nok_test/specializations/models/qualification.dart';
import 'package:nok_test/specializations/models/specialization.dart';
import 'package:nok_test/styles/app_text_styles.dart';
import 'package:nok_test/styles/colors.dart';

class QualificationShopListItem extends StatelessWidget {
  const QualificationShopListItem({
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
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Профессиональный стандарт:', style: AppTextStyles.title2),
          Text(specialization.name, style: AppTextStyles.body1),
          SizedBox(height: 16),
          Text('Квалификация:', style: AppTextStyles.title2),
          Text(qualification.name, style: AppTextStyles.body1),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              bought
                  ? Text(
                      'Оплачено',
                      style: AppTextStyles.body1.copyWith(color: correctAnswerColor),
                    )
                  : Row(
                      children: [
                        Text('Цена', style: AppTextStyles.body1),
                        SizedBox(width: 8),
                        Text(
                          "${qualification.cost} руб.",
                          style: AppTextStyles.body1.copyWith(color: primaryColor),
                        ),
                      ],
                    ),
              SizedBox(width: 16),
              FilledButton(
                onPressed: () {
                  context.router.push(QualificationShopRoute(
                    specialization: specialization,
                    qualification: qualification,
                    bought: bought,
                  ));
                },
                child: Text('Подробнее'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
