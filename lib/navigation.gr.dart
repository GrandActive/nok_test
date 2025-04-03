// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'navigation.dart';

/// generated route for
/// [AboutPage]
class AboutRoute extends PageRouteInfo<void> {
  const AboutRoute({List<PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AboutPage();
    },
  );
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const AuthPage());
    },
  );
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const LoginPage());
    },
  );
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainPage();
    },
  );
}

/// generated route for
/// [PasswordRestorationInputPage]
class PasswordRestorationInputRoute extends PageRouteInfo<void> {
  const PasswordRestorationInputRoute({List<PageRouteInfo>? children})
      : super(
          PasswordRestorationInputRoute.name,
          initialChildren: children,
        );

  static const String name = 'PasswordRestorationInputRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PasswordRestorationInputPage();
    },
  );
}

/// generated route for
/// [PasswordRestorationPage]
class PasswordRestorationRoute extends PageRouteInfo<void> {
  const PasswordRestorationRoute({List<PageRouteInfo>? children})
      : super(
          PasswordRestorationRoute.name,
          initialChildren: children,
        );

  static const String name = 'PasswordRestorationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const PasswordRestorationPage());
    },
  );
}

/// generated route for
/// [PasswordRestorationResultPage]
class PasswordRestorationResultRoute
    extends PageRouteInfo<PasswordRestorationResultRouteArgs> {
  PasswordRestorationResultRoute({
    Key? key,
    required String email,
    List<PageRouteInfo>? children,
  }) : super(
          PasswordRestorationResultRoute.name,
          args: PasswordRestorationResultRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'PasswordRestorationResultRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PasswordRestorationResultRouteArgs>();
      return PasswordRestorationResultPage(
        key: args.key,
        email: args.email,
      );
    },
  );
}

class PasswordRestorationResultRouteArgs {
  const PasswordRestorationResultRouteArgs({
    this.key,
    required this.email,
  });

  final Key? key;

  final String email;

  @override
  String toString() {
    return 'PasswordRestorationResultRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [PaymentResultPage]
class PaymentResultRoute extends PageRouteInfo<void> {
  const PaymentResultRoute({List<PageRouteInfo>? children})
      : super(
          PaymentResultRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentResultRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const PaymentResultPage());
    },
  );
}

/// generated route for
/// [QualificationShopListPage]
class QualificationShopListRoute extends PageRouteInfo<void> {
  const QualificationShopListRoute({List<PageRouteInfo>? children})
      : super(
          QualificationShopListRoute.name,
          initialChildren: children,
        );

  static const String name = 'QualificationShopListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const QualificationShopListPage();
    },
  );
}

/// generated route for
/// [QualificationShopPage]
class QualificationShopRoute extends PageRouteInfo<QualificationShopRouteArgs> {
  QualificationShopRoute({
    Key? key,
    required Specialization specialization,
    required Qualification qualification,
    bool bought = false,
    List<PageRouteInfo>? children,
  }) : super(
          QualificationShopRoute.name,
          args: QualificationShopRouteArgs(
            key: key,
            specialization: specialization,
            qualification: qualification,
            bought: bought,
          ),
          initialChildren: children,
        );

  static const String name = 'QualificationShopRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<QualificationShopRouteArgs>();
      return QualificationShopPage(
        key: args.key,
        specialization: args.specialization,
        qualification: args.qualification,
        bought: args.bought,
      );
    },
  );
}

class QualificationShopRouteArgs {
  const QualificationShopRouteArgs({
    this.key,
    required this.specialization,
    required this.qualification,
    this.bought = false,
  });

  final Key? key;

  final Specialization specialization;

  final Qualification qualification;

  final bool bought;

  @override
  String toString() {
    return 'QualificationShopRouteArgs{key: $key, specialization: $specialization, qualification: $qualification, bought: $bought}';
  }
}

/// generated route for
/// [QuestionListPage]
class QuestionListRoute extends PageRouteInfo<void> {
  const QuestionListRoute({List<PageRouteInfo>? children})
      : super(
          QuestionListRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuestionListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const QuestionListPage();
    },
  );
}

/// generated route for
/// [QuestionListWrapperPage]
class QuestionListWrapperRoute extends PageRouteInfo<void> {
  const QuestionListWrapperRoute({List<PageRouteInfo>? children})
      : super(
          QuestionListWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuestionListWrapperRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const QuestionListWrapperPage());
    },
  );
}

/// generated route for
/// [QuestionReviewPage]
class QuestionReviewRoute extends PageRouteInfo<QuestionReviewRouteArgs> {
  QuestionReviewRoute({
    Key? key,
    required TestQuestion question,
    required int index,
    required TestMode mode,
    List<PageRouteInfo>? children,
  }) : super(
          QuestionReviewRoute.name,
          args: QuestionReviewRouteArgs(
            key: key,
            question: question,
            index: index,
            mode: mode,
          ),
          initialChildren: children,
        );

  static const String name = 'QuestionReviewRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<QuestionReviewRouteArgs>();
      return QuestionReviewPage(
        key: args.key,
        question: args.question,
        index: args.index,
        mode: args.mode,
      );
    },
  );
}

class QuestionReviewRouteArgs {
  const QuestionReviewRouteArgs({
    this.key,
    required this.question,
    required this.index,
    required this.mode,
  });

  final Key? key;

  final TestQuestion question;

  final int index;

  final TestMode mode;

  @override
  String toString() {
    return 'QuestionReviewRouteArgs{key: $key, question: $question, index: $index, mode: $mode}';
  }
}

/// generated route for
/// [QuestionViewerPage]
class QuestionViewerRoute extends PageRouteInfo<void> {
  const QuestionViewerRoute({List<PageRouteInfo>? children})
      : super(
          QuestionViewerRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuestionViewerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const QuestionViewerPage();
    },
  );
}

/// generated route for
/// [RegistrationPage]
class RegistrationRoute extends PageRouteInfo<void> {
  const RegistrationRoute({List<PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const RegistrationPage());
    },
  );
}

/// generated route for
/// [SpecializationWrapperPage]
class SpecializationWrapperRoute extends PageRouteInfo<void> {
  const SpecializationWrapperRoute({List<PageRouteInfo>? children})
      : super(
          SpecializationWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'SpecializationWrapperRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const SpecializationWrapperPage());
    },
  );
}

/// generated route for
/// [TestResultsPage]
class TestResultsRoute extends PageRouteInfo<void> {
  const TestResultsRoute({List<PageRouteInfo>? children})
      : super(
          TestResultsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TestResultsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TestResultsPage();
    },
  );
}

/// generated route for
/// [TestWrapperPage]
class TestWrapperRoute extends PageRouteInfo<TestWrapperRouteArgs> {
  TestWrapperRoute({
    Key? key,
    required TestMode mode,
    List<PageRouteInfo>? children,
  }) : super(
          TestWrapperRoute.name,
          args: TestWrapperRouteArgs(
            key: key,
            mode: mode,
          ),
          initialChildren: children,
        );

  static const String name = 'TestWrapperRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TestWrapperRouteArgs>();
      return WrappedRoute(
          child: TestWrapperPage(
        key: args.key,
        mode: args.mode,
      ));
    },
  );
}

class TestWrapperRouteArgs {
  const TestWrapperRouteArgs({
    this.key,
    required this.mode,
  });

  final Key? key;

  final TestMode mode;

  @override
  String toString() {
    return 'TestWrapperRouteArgs{key: $key, mode: $mode}';
  }
}

/// generated route for
/// [TestingPage]
class TestingRoute extends PageRouteInfo<void> {
  const TestingRoute({List<PageRouteInfo>? children})
      : super(
          TestingRoute.name,
          initialChildren: children,
        );

  static const String name = 'TestingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const TestingPage());
    },
  );
}

/// generated route for
/// [UserPurchasesPage]
class UserPurchasesRoute extends PageRouteInfo<void> {
  const UserPurchasesRoute({List<PageRouteInfo>? children})
      : super(
          UserPurchasesRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserPurchasesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const UserPurchasesPage());
    },
  );
}
