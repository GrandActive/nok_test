import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nok_test/common/widgets/app_filled_button.dart';
import 'package:nok_test/styles/app_text_styles.dart';
import 'package:nok_test/utils/list_separated_extension.dart';

Future<List<int>?> showMultipleSelectDialog(
  BuildContext context,
  List<String> options,
  List<int> selectedOptions,
) {
  return showDialog<List<int>>(
    context: context,
    builder: (context) {
      return _MultipleSelectDialog(
        options: options,
        selectedOptions: selectedOptions,
      );
    },
  );
}

class _MultipleSelectDialog extends StatefulWidget {
  const _MultipleSelectDialog({
    required this.options,
    required this.selectedOptions,
  });

  final List<String> options;
  final List<int> selectedOptions;

  @override
  State<_MultipleSelectDialog> createState() => _MultipleSelectDialogState();
}

class _MultipleSelectDialogState extends State<_MultipleSelectDialog> {
  late final List<int> _selectedOptions = widget.selectedOptions;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: const BorderSide(color: Color(0xFF7F7F7F), width: 1),
      ),
      content: SingleChildScrollView(
        child: Column(
          children: widget.options.indexed
              .map<Widget>((a) {
                final (index, option) = a;
                return CheckboxListTile(
                  title: Text(option, style: AppTextStyles.body1),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _selectedOptions.contains(index),
                  onChanged: (checked) {
                    setState(() {
                      if (checked ?? false) {
                        _selectedOptions.add(index);
                        _selectedOptions.sort();
                      } else {
                        _selectedOptions.remove(index);
                      }
                    });
                  },
                  fillColor: WidgetStateProperty.resolveWith(
                    (states) {
                      if (states.contains(WidgetState.selected)) return const Color(0xff277ADB);
                      return Colors.transparent;
                    },
                  ),
                  checkboxShape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                  ),
                  side: BorderSide(width: 1, color: const Color(0xff277ADB)),
                  contentPadding: const EdgeInsets.only(right: 8),
                );
              })
              .toList()
              .separatedBy(const Divider(
                color: Color(0xFFD0D0D0),
                indent: 16,
                endIndent: 16,
                height: 0,
              )),
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        AppFilledButton(
          child: Text('Ок'),
          onPressed: () {
            context.router.maybePop(_selectedOptions);
          },
        )
      ],
    );
  }
}
