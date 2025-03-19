import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/injection.dart';
import 'package:nok_test/specializations/bloc/qualification_select_bloc/qualification_select_bloc.dart';
import 'package:nok_test/specializations/bloc/specialization_select_bloc/specialization_select_bloc.dart';
import 'package:nok_test/specializations/bloc/specializations_bloc/specializations_bloc.dart';

@RoutePage()
class SpecializationWrapperPage extends StatelessWidget implements AutoRouteWrapper {
  const SpecializationWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
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
        child: this,
      ),
    );
  }
}
