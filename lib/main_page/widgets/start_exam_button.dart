import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/common/widgets/app_filled_button.dart';
import 'package:nok_test/navigation.dart';
import 'package:nok_test/specializations/bloc/qualification_select_bloc/qualification_select_bloc.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';

class StartExamButton extends StatelessWidget {
  const StartExamButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final enabled = context.watch<QualificationSelectBloc>().state.selectedQualification != null;

    return AppFilledButton(
      onPressed: enabled
          ? () => context.router.push(
                TestWrapperRoute(
                  mode: TestMode.exam,
                  children: const [TestingRoute()],
                ),
              )
          : null,
      child: const Text("Начать тест"),
    );
  }
}
