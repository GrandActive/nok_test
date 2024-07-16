import 'package:flutter/material.dart';
import 'package:nok_test/styles/app_text_styles.dart';

class BorderlessButton extends StatelessWidget {
  const BorderlessButton({
    super.key,
    required this.onTap,
    required this.text,
    this.textColor,
    this.iconColor,
    this.icon,
  });

  final VoidCallback onTap;
  final String text;
  final IconData? icon;
  final Color? textColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (icon != null) ...[
              Icon(
                icon,
                color: iconColor ?? const Color(0xFF464646),
              ),
              const SizedBox(width: 16),
            ],
            Text(
              text,
              style: textColor != null
                  ? AppTextStyles.body1.copyWith(color: textColor)
                  : AppTextStyles.body1,
            ),
          ],
        ),
      ),
    );
  }
}
