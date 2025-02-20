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
  });

  final List<String> options;
  final ValueSetter<int> onSelect;
  final int? selectedIndex;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return PopupSelectButton(
      onTap: () async {
        final result = await showSingleSelectDialog(context, options);
        if (result != null) onSelect(result);
      },
      child: Text(selectedIndex == null ? placeholder : options[selectedIndex!]),
    );
  }
}
