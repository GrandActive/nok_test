import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gip_test/firebase_options.dart';
import 'package:gip_test/injection.dart';
import 'package:gip_test/navigation.gr.dart';
import 'package:gip_test/styles/button_color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        useMaterial3: true,
        filledButtonTheme:
            FilledButtonThemeData(style: ButtonStyle(backgroundColor: ButtonColor())),
        radioTheme: const RadioThemeData(fillColor: MaterialStatePropertyAll(Color(0xff277ADB))),
        appBarTheme: const AppBarTheme(color: Color(0xff277ADB), foregroundColor: Colors.white),
        colorSchemeSeed: const Color(0x00277adb),
      ),
    );
  }
}
