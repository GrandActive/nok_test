import 'package:flutter/material.dart';
import 'package:gip_test/injection.dart';
import 'package:gip_test/navigation.gr.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: const Color(0x00277adb),
      ),
    );
  }
}
