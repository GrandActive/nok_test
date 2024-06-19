import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:nok_test/auth/bloc/password_restoration_bloc/password_restoration_bloc.dart';

@RoutePage()
class PasswordRestorationPage extends StatelessWidget implements AutoRouteWrapper {
  const PasswordRestorationPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<PasswordRestorationBloc>(
      create: (context) => GetIt.I(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
