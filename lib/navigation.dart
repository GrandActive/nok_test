import 'package:auto_route/auto_route.dart';
import 'package:gip_test/main_page/main_page.dart';
import 'package:gip_test/mode_select_page.dart';
import 'package:gip_test/training/ui/pages/test_page/test_page.dart';
import 'package:gip_test/training/ui/pages/test_results_page/test_results_page.dart';
import 'package:gip_test/training/ui/pages/test_wrapper_page.dart';
import 'package:gip_test/training/ui/pages/training_start_page.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: [
  AutoRoute(page: MainPage, initial: true),
  AutoRoute(page: ModeSelectPage),
  AutoRoute(page: TrainingStartPage),
  AutoRoute(
    page: TestWrapperPage,
    children: [
      AutoRoute(page: TestPage),
      AutoRoute(page: TestResultsPage),
    ],
  ),
])
class $AppRouter {}
