import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/common/widgets/popup_select/popup_single_select/popup_single_select.dart';
import 'package:nok_test/specializations/bloc/specialization_select_bloc/specialization_select_bloc.dart';
import 'package:nok_test/specializations/bloc/specializations_bloc/specializations_bloc.dart';
import 'package:nok_test/specializations/models/specialization.dart';
import 'package:nok_test/styles/app_text_styles.dart';

class SpecializationSelect extends StatelessWidget {
  const SpecializationSelect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final loading = context.watch<SpecializationsBloc>().state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );

    final (specializations, selectedIndex) =
        context.watch<SpecializationSelectBloc>().state.maybeWhen(
              active: (allSpecializations, selectedIndex) => (allSpecializations, selectedIndex),
              orElse: () => (<Specialization>[], null),
            );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Профессиональный стандарт:", style: AppTextStyles.title2),
        const SizedBox(height: 8),
        PopupSingleSelect(
          options: specializations.map((s) => s.name).toList(),
          onSelect: (index) => context
              .read<SpecializationSelectBloc>()
              .add(SpecializationSelectEvent.selected(index: index)),
          selectedIndex: selectedIndex,
          placeholder: 'Выбрать',
          loading: loading,
        ),
      ],
    );
  }
}
