import 'package:flutter/material.dart';
import 'package:nok_test/styles/app_text_styles.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppVersion extends StatelessWidget {
  const AppVersion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: PackageInfo.fromPlatform(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const SizedBox.shrink();
          final info = snapshot.data!;
          return Text(
            'Версия приложения: ${info.version}',
            style: AppTextStyles.body1,
            textAlign: TextAlign.center,
          );
        });
  }
}
