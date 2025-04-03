import 'package:flutter/material.dart';
import 'package:nok_test/styles/app_text_styles.dart';
import 'package:nok_test/styles/colors.dart';

class PremiumDescriptionListItem extends StatelessWidget {
  const PremiumDescriptionListItem({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(4),
          child: Icon(
            Icons.check,
            size: 16,
            color: primaryColor,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(text, style: AppTextStyles.body1),
        ),
      ],
    );
  }
}
