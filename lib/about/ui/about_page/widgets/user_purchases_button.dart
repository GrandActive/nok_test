import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nok_test/common/widgets/borderless_button.dart';
import 'package:nok_test/navigation.dart';

class UserPurchasesButton extends StatelessWidget {
  const UserPurchasesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BorderlessButton(
      onTap: () {
        context.router.push(QualificationShopListRoute());
      },
      text: 'Мои покупки',
      icon: Icons.shopping_bag_outlined,
    );
  }
}
