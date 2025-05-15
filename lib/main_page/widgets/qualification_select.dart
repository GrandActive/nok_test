import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/common/widgets/popup_select/popup_single_select/popup_single_select.dart';
import 'package:nok_test/main_page/widgets/test_info.dart';
import 'package:nok_test/specializations/bloc/qualification_select_bloc/qualification_select_bloc.dart';
import 'package:nok_test/specializations/models/qualification.dart';
import 'package:nok_test/styles/app_text_styles.dart';

class QualificationSelect extends StatelessWidget {
  const QualificationSelect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final qualificationSelectBloc = context.watch<QualificationSelectBloc>();

    final (qualifications, selectedIndex) = qualificationSelectBloc.state.maybeWhen(
      active: (allQualifications, selectedIndex) => (allQualifications, selectedIndex),
      orElse: () => (<Qualification>[], null),
    );

    final enabled = qualifications.isNotEmpty;

    final selectedQualification = qualificationSelectBloc.state.selectedQualification;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Квалификация:", style: AppTextStyles.title2),
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
        if (selectedQualification != null) ...[
          SizedBox(height: 32),
          TestInfo(
            questionCount: selectedQualification.testQuestionCount,
            correctAnswerCount: selectedQualification.correctAnswerCount,
          ),
        ]
      ],
    );
  }
}
