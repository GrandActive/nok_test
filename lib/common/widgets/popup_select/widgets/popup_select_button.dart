import 'package:flutter/material.dart';

class PopupSelectButton extends StatelessWidget {
  const PopupSelectButton({
    super.key,
    required this.onTap,
    required this.child,
    this.loading = false,
  });

  final VoidCallback? onTap;
  final Widget child;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    final enabled = !loading && onTap != null;

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        border: Border.all(
          color: enabled ? const Color(0xFF7F7F7F) : Colors.grey,
          width: 1,
        ),
      ),
      child: InkWell(
        onTap: loading ? null : onTap,
        child: Container(
          constraints: const BoxConstraints(minHeight: 56),
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: child),
              const SizedBox(width: 16),
              loading
                  ? CircularProgressIndicator(
                      constraints: BoxConstraints.tight(Size.square(24)),
                      strokeWidth: 2,
                    )
                  : Icon(
                      Icons.arrow_drop_down,
                      color: enabled ? null : Colors.grey,
                    )
            ],
          ),
        ),
      ),
    );
  }
}
