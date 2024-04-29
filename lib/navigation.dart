import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nok_test/about_page.dart';
import 'package:nok_test/main_page/main_page.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/main_page/test_intro_page.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/pages/question_review_page.dart';
import 'package:nok_test/testing/ui/pages/test_results_page/test_results_page.dart';
import 'package:nok_test/testing/ui/pages/test_wrapper_page.dart';
import 'package:nok_test/testing/ui/pages/testing_page/testing_page.dart';

part 'navigation.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MainRoute.page, initial: true),
        AutoRoute(page: AboutRoute.page),
        AutoRoute(page: TestIntroRoute.page),
        AutoRoute(
          page: TestWrapperRoute.page,
          children: [
            AutoRoute(page: TestingRoute.page),
            AutoRoute(page: TestResultsRoute.page),
            AutoRoute(page: QuestionReviewRoute.page),
          ],
        ),
      ];
}
