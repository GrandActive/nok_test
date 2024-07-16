import 'package:flutter/material.dart';
import 'package:nok_test/common/widgets/app_logo.dart';
import 'package:nok_test/styles/app_text_styles.dart';

class AppDescription extends StatelessWidget {
  const AppDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        AppLogo(),
        SizedBox(width: 16),
        Expanded(
          child: Text(
            'Тренажер по подготовке к теоретической части экзамена',
            style: AppTextStyles.body1,
          ),
        ),
      ],
    );
  }
}
