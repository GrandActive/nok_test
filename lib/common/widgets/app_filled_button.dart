import 'package:flutter/material.dart';

class AppFilledButton extends StatelessWidget {
  const AppFilledButton({super.key, this.onPressed, this.child});

  final VoidCallback? onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: const ButtonStyle(
        minimumSize: MaterialStatePropertyAll(Size(156, 41)),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
