import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/common/widgets/no_connection_banner.dart';
import 'package:nok_test/main_page/widgets/main_action_buttons.dart';
import 'package:nok_test/main_page/widgets/widgets.dart';
import 'package:nok_test/navigation.dart';
import 'package:nok_test/specializations/bloc/specializations_bloc/specializations_bloc.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: const Column(
                  children: [
                    PremiumStatus(),
                    SpecializationSelect(),
                    SizedBox(height: 24),
                    QualificationSelect(),
                    SizedBox(height: 32),
                    TestInfo(),
                    SizedBox(height: 40),
                    MainActionButtons(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
