import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/common/widgets/app_filled_button.dart';
import 'package:nok_test/common/widgets/app_outlined_button.dart';
import 'package:nok_test/main_page/widgets/start_exam_button.dart';
import 'package:nok_test/navigation.dart';
import 'package:nok_test/qualification_shop/bloc/user_purchases_bloc/user_purchases_bloc.dart';
import 'package:nok_test/specializations/bloc/qualification_select_bloc/qualification_select_bloc.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';

class MainActionButtons extends StatelessWidget {
  const MainActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final userPurchases = context.watch<UserPurchasesBloc>().state.userPurchases;

    final selectedQualification =
        context.watch<QualificationSelectBloc>().state.selectedQualification;

    final isPurchased = userPurchases.contains(selectedQualification?.id);

    final buttonsEnabled = selectedQualification != null;

    if (isPurchased) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppOutlinedButton(
                onPressed: buttonsEnabled
                    ? () => context.router.push(TestWrapperRoute(mode: TestMode.training))
                    : null,
                child: const Text('Тренировка'),
              ),
              const SizedBox(width: 16),
              AppFilledButton(
                onPressed: buttonsEnabled
                    ? () => context.router.push(TestWrapperRoute(mode: TestMode.exam))
                    : null,
                child: const Text("Экзамен"),
              ),
            ],
          ),
          const SizedBox(height: 8),
          TextButton(
            onPressed: buttonsEnabled ? () => context.router.push(QuestionListRoute()) : null,
            child: const Text('Список всех вопросов'),
          ),
        ],
      );
    }

    return const StartExamButton();
  }
}
