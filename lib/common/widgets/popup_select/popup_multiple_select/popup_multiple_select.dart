import 'package:flutter/material.dart';
import 'package:nok_test/common/widgets/popup_select/popup_multiple_select/multiple_select_dialog.dart';
import 'package:nok_test/common/widgets/popup_select/widgets/popup_select_button.dart';
import 'package:nok_test/utils/list_separated_extension.dart';

class PopupMultipleSelect extends StatelessWidget {
  const PopupMultipleSelect({
    super.key,
    required this.options,
    required this.onSelect,
    required this.selectedIndices,
    this.placeholder = "",
  });

  final List<String> options;
  final ValueSetter<List<int>> onSelect;
  final List<int> selectedIndices;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return PopupSelectButton(
        onTap: () async {
          final result = await showMultipleSelectDialog(context, options, selectedIndices);
          if (result != null) onSelect(result);
        },
        child: selectedIndices.isEmpty
            ? Text(placeholder, style: TextStyle(color: Color(0xFF9D9D9D)))
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: selectedIndices
                    .map<Widget>((e) => Text(options[e]))
                    .toList()
                    .separatedBy(SizedBox(height: 8)),
              ));
  }
}
