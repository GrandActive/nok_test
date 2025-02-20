import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nok_test/utils/list_separated_extension.dart';

Future<int?> showSingleSelectDialog(
  BuildContext context,
  List<String> options,
) {
  return showDialog<int>(
    context: context,
    builder: (context) {
      return _SingleSelectDialog(options: options);
    },
  );
}

class _SingleSelectDialog extends StatelessWidget {
  const _SingleSelectDialog({
    required this.options,
  });

  final List<String> options;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: const BorderSide(color: Color(0xFF7F7F7F), width: 1),
      ),
      children: options.indexed
          .map<Widget>((o) {
            final (index, option) = o;
            return SimpleDialogOption(
              padding: const EdgeInsets.all(16),
              onPressed: () => context.router.maybePop(index),
              child: Text(option),
            );
          })
          .toList()
          .separatedBy(const Divider(
            color: Color(0xFFD0D0D0),
            indent: 16,
            endIndent: 16,
            height: 0,
          )),
    );
  }
}
