import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/common/widgets/app_filled_button.dart';
import 'package:nok_test/common/widgets/app_outlined_button.dart';
import 'package:nok_test/common/widgets/no_connection_banner.dart';
import 'package:nok_test/injection.dart';
import 'package:nok_test/main_page/widgets/widgets.dart';
import 'package:nok_test/navigation.dart';
import 'package:nok_test/premium/bloc/premium_bloc.dart';
import 'package:nok_test/specializations/bloc/qualification_select_bloc/qualification_select_bloc.dart';
import 'package:nok_test/specializations/bloc/specialization_select_bloc/specialization_select_bloc.dart';
import 'package:nok_test/specializations/bloc/specializations_bloc/specializations_bloc.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final isPaid = context.watch<PremiumBloc>().state.maybeWhen(
          orElse: () => false,
          enabled: () => true,
        );

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<SpecializationsBloc>()..add(SpecializationsEvent.started()),
        ),
        BlocProvider(
          create: (context) => getIt<SpecializationSelectBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<QualificationSelectBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<SpecializationsBloc, SpecializationsState>(
            listener: (context, state) {
              state.whenOrNull(
                success: (specializations) {
                  context
                      .read<SpecializationSelectBloc>()
                      .add(SpecializationSelectEvent.initialized(specializations: specializations));
                },
              );
            },
          ),
          BlocListener<SpecializationSelectBloc, SpecializationSelectState>(
            listener: (context, state) {
              state.whenOrNull(
                active: (allSpecializations, selectedIndex) {
                  final specialization = state.selectedSpecialization;
                  if (specialization == null) return;
                  context.read<QualificationSelectBloc>().add(QualificationSelectEvent.initialized(
                        qualifications: specialization.qualifications,
                      ));
                },
              );
            },
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Тренажер по тестам НОК"),
            actions: [
              IconButton(
                icon: const Icon(Icons.info_outlined),
                onPressed: () => context.router.push(const AboutRoute()),
              ),
            ],
          ),
          body: BlocBuilder<SpecializationsBloc, SpecializationsState>(
            builder: (context, state) {
              return state.maybeWhen(
                failure: (message) => Center(
                  child: NoConnectionBanner(
                    onRetry: () =>
                        context.read<SpecializationsBloc>().add(SpecializationsEvent.started()),
                  ),
                ),
                orElse: () => SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                    child: Column(
                      children: [
                        const PremiumStatus(),
                        const SpecializationSelect(),
                        const SizedBox(height: 24),
                        const QualificationSelect(),
                        const SizedBox(height: 32),
                        if (isPaid) ...[
                          const Text(
                            'Выберите режим прохождения теста',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(height: 24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppOutlinedButton(
                                onPressed: () =>
                                    context.router.push(TestIntroRoute(mode: TestMode.training)),
                                child: const Text('Тренировка'),
                              ),
                              const SizedBox(width: 16),
                              AppFilledButton(
                                onPressed: () =>
                                    context.router.push(TestIntroRoute(mode: TestMode.exam)),
                                child: const Text("Экзамен"),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          TextButton(
                            onPressed: () {
                              context.router.push(QuestionListRoute());
                            },
                            child: const Text('Список всех вопросов'),
                          ),
                        ] else ...[
                          const TestInfo(),
                          const SizedBox(height: 40),
                          const StartExamButton(),
                        ],
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
