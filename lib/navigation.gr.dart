// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'navigation.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AboutPage(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    QuestionReviewRoute.name: (routeData) {
      final args = routeData.argsAs<QuestionReviewRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: QuestionReviewPage(
          key: args.key,
          question: args.question,
          index: args.index,
        ),
      );
    },
    TestIntroRoute.name: (routeData) {
      final args = routeData.argsAs<TestIntroRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TestIntroPage(
          key: args.key,
          mode: args.mode,
        ),
      );
    },
    TestResultsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TestResultsPage(),
      );
    },
    TestWrapperRoute.name: (routeData) {
      final args = routeData.argsAs<TestWrapperRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: TestWrapperPage(
          key: args.key,
          mode: args.mode,
        )),
      );
    },
    TestingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TestingPage(),
      );
    },
  };
}

/// generated route for
/// [AboutPage]
class AboutRoute extends PageRouteInfo<void> {
  const AboutRoute({List<PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [QuestionReviewPage]
class QuestionReviewRoute extends PageRouteInfo<QuestionReviewRouteArgs> {
  QuestionReviewRoute({
    Key? key,
    required TestQuestion question,
    required int index,
    List<PageRouteInfo>? children,
  }) : super(
          QuestionReviewRoute.name,
          args: QuestionReviewRouteArgs(
            key: key,
            question: question,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'QuestionReviewRoute';

  static const PageInfo<QuestionReviewRouteArgs> page =
      PageInfo<QuestionReviewRouteArgs>(name);
}

class QuestionReviewRouteArgs {
  const QuestionReviewRouteArgs({
    this.key,
    required this.question,
    required this.index,
  });

  final Key? key;

  final TestQuestion question;

  final int index;

  @override
  String toString() {
    return 'QuestionReviewRouteArgs{key: $key, question: $question, index: $index}';
  }
}

/// generated route for
/// [TestIntroPage]
class TestIntroRoute extends PageRouteInfo<TestIntroRouteArgs> {
  TestIntroRoute({
    Key? key,
    required TestMode mode,
    List<PageRouteInfo>? children,
  }) : super(
          TestIntroRoute.name,
          args: TestIntroRouteArgs(
            key: key,
            mode: mode,
          ),
          initialChildren: children,
        );

  static const String name = 'TestIntroRoute';

  static const PageInfo<TestIntroRouteArgs> page =
      PageInfo<TestIntroRouteArgs>(name);
}

class TestIntroRouteArgs {
  const TestIntroRouteArgs({
    this.key,
    required this.mode,
  });

  final Key? key;

  final TestMode mode;

  @override
  String toString() {
    return 'TestIntroRouteArgs{key: $key, mode: $mode}';
  }
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<TestWrapperRouteArgs> page =
      PageInfo<TestWrapperRouteArgs>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
}
