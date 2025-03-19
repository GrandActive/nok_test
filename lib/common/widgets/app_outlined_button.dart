import 'package:flutter/material.dart';
import 'package:nok_test/styles/colors.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({
    super.key,
    this.onPressed,
    this.child,
  });

  final VoidCallback? onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        side: WidgetStateBorderSide.resolveWith(
          (states) {
            if (states.contains(WidgetState.disabled)) {
              return null;
            } else {
              return BorderSide(color: primaryColor);
            }
          },
        ),
        minimumSize: MaterialStatePropertyAll(Size(156, 41)),
      ),
      child: child,
    );
  }
}
