import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:nok_test/init_firebase.dart';
import 'package:nok_test/injection.dart';
import 'package:nok_test/navigation.dart';
import 'package:nok_test/premium/bloc/premium_bloc.dart';
import 'package:nok_test/styles/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initFirebase();
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => getIt()..add(const AuthEvent.started()),
        ),
        BlocProvider<PremiumBloc>(
          create: (context) => getIt(),
        ),
      ],
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          final premiumBloc = context.read<PremiumBloc>();
          state.whenOrNull(
            authenticated: (user) {
              premiumBloc.add(const PremiumEvent.statusRequested());
            },
            notAuthenticated: () {
              premiumBloc.add(const PremiumEvent.reset());
            },
          );
        },
        child: MaterialApp.router(
          routerConfig: _appRouter.config(),
          title: 'Тест НОК',
          theme: appTheme,
        ),
      ),
    );
  }
}
