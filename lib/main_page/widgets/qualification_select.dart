import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/common/widgets/popup_select/popup_single_select/popup_single_select.dart';
import 'package:nok_test/specializations/bloc/qualification_select_bloc/qualification_select_bloc.dart';
import 'package:nok_test/specializations/models/qualification.dart';

class QualificationSelect extends StatelessWidget {
  const QualificationSelect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final (qualifications, selectedIndex) =
        context.watch<QualificationSelectBloc>().state.maybeWhen(
              active: (allQualifications, selectedIndex) => (allQualifications, selectedIndex),
              orElse: () => (<Qualification>[], null),
            );

    final enabled = qualifications.isNotEmpty;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Квалификация:",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 8),
        PopupSingleSelect(
          options: qualifications.map((s) => s.name).toList(),
          onSelect: (index) => context
              .read<QualificationSelectBloc>()
              .add(QualificationSelectEvent.selected(index: index)),
          selectedIndex: selectedIndex,
          placeholder: 'Выбрать',
          enabled: enabled,
        ),
      ],
    );
  }
}
