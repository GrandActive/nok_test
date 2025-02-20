import 'package:flutter/material.dart';

class PopupSelectButton extends StatelessWidget {
  const PopupSelectButton({
    super.key,
    required this.onTap,
    required this.child,
  });

  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        border: Border.all(color: const Color(0xFF7F7F7F), width: 1),
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          constraints: const BoxConstraints(minHeight: 56),
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: child),
              const SizedBox(width: 16),
              const Icon(Icons.arrow_drop_down)
            ],
          ),
        ),
      ),
    );
  }
}
