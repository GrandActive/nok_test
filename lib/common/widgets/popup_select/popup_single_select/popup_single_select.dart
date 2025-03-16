import 'package:flutter/material.dart';
import 'package:nok_test/common/widgets/popup_select/popup_single_select/single_select_dialog.dart';
import 'package:nok_test/common/widgets/popup_select/widgets/popup_select_button.dart';

class PopupSingleSelect extends StatelessWidget {
  const PopupSingleSelect({
    super.key,
    required this.options,
    required this.onSelect,
    required this.selectedIndex,
    this.placeholder = "",
    this.enabled = true,
  });

  final List<String> options;
  final ValueSetter<int> onSelect;
  final int? selectedIndex;
  final String placeholder;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return PopupSelectButton(
      onTap: enabled
          ? () async {
              final result = await showSingleSelectDialog(context, options);
              if (result != null) onSelect(result);
            }
          : null,
      child: selectedIndex == null
          ? Text(
              placeholder,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            )
          : Text(
              options[selectedIndex!],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
    );
  }
}
