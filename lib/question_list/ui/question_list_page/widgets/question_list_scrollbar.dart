import 'package:flutter/material.dart';

class QuestionListScrollbar extends StatelessWidget {
  const QuestionListScrollbar({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ScrollbarTheme(
      data: ScrollbarThemeData(
        interactive: true,
        mainAxisMargin: 4,
        crossAxisMargin: 4,
        thickness: WidgetStatePropertyAll(4),
        radius: Radius.circular(8),
        thumbColor: WidgetStatePropertyAll(Color(0xFF277ADB)),
        trackColor: WidgetStatePropertyAll(Color(0x61EBEBEB)),
      ),
      child: Scrollbar(
        thumbVisibility: true,
        trackVisibility: true,
        child: child,
      ),
    );
  }
}
