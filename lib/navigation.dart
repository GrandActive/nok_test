import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nok_test/about/ui/about_page/about_page.dart';
import 'package:nok_test/auth/ui/auth_page.dart';
import 'package:nok_test/auth/ui/login_page/login_page.dart';
import 'package:nok_test/auth/ui/password_restoration_page/password_restoration_input_page.dart';
import 'package:nok_test/auth/ui/password_restoration_page/password_restoration_page.dart';
import 'package:nok_test/auth/ui/password_restoration_page/password_restoration_result_page.dart';
import 'package:nok_test/auth/ui/registration_page/registration_page.dart';
import 'package:nok_test/main_page/main_page.dart';
import 'package:nok_test/main_page/test_intro_page.dart';
import 'package:nok_test/payments/ui/payment_result_page.dart';
import 'package:nok_test/premium/ui/premium_page/premium_page.dart';
import 'package:nok_test/question_list/ui/question_list_page/question_list_page.dart';
import 'package:nok_test/question_list/ui/question_list_wrapper_page.dart';
import 'package:nok_test/question_list/ui/question_viewer_page/question_viewer_page.dart';
import 'package:nok_test/questions/base/ui/question_review_page.dart';
import 'package:nok_test/specializations/specialization_wrapper_page.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';
import 'package:nok_test/testing/ui/pages/test_results_page/test_results_page.dart';
import 'package:nok_test/testing/ui/pages/test_wrapper_page.dart';
import 'package:nok_test/testing/ui/pages/testing_page/testing_page.dart';

part 'navigation.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SpecializationWrapperRoute.page,
          initial: true,
          children: [
            AutoRoute(page: MainRoute.page, initial: true),
            AutoRoute(page: TestIntroRoute.page),
            AutoRoute(
              page: TestWrapperRoute.page,
              children: [
                AutoRoute(page: TestingRoute.page),
                AutoRoute(page: TestResultsRoute.page),
                AutoRoute(page: QuestionReviewRoute.page),
              ],
            ),
            AutoRoute(
              page: QuestionListWrapperRoute.page,
              children: [
                AutoRoute(page: QuestionListRoute.page, initial: true),
                AutoRoute(page: QuestionViewerRoute.page),
              ],
            ),
          ],
        ),
        AutoRoute(page: AboutRoute.page),
        AutoRoute(page: PremiumRoute.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(
          path: '/payment/result',
          page: PaymentResultRoute.page,
        ),
        AutoRoute(
          page: AuthRoute.page,
          children: [
            AutoRoute(page: LoginRoute.page, initial: true),
            AutoRoute(page: RegistrationRoute.page),
            AutoRoute(
              page: PasswordRestorationRoute.page,
              children: [
                AutoRoute(page: PasswordRestorationInputRoute.page, initial: true),
                AutoRoute(page: PasswordRestorationResultRoute.page),
              ],
            ),
          ],
        ),
      ];
}
