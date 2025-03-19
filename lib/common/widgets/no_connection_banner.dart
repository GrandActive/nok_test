import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nok_test/common/widgets/app_filled_button.dart';
import 'package:nok_test/styles/app_text_styles.dart';

class NoConnectionBanner extends StatelessWidget {
  const NoConnectionBanner({
    super.key,
    required this.onRetry,
  });

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Проверьте подключение к сети', style: AppTextStyles.title3),
        SizedBox(height: 24),
        SvgPicture.asset('assets/icons/no_connection.svg'),
        SizedBox(height: 72),
        AppFilledButton(
          onPressed: onRetry,
          child: Text('Повторить'),
        )
      ],
    );
  }
}
