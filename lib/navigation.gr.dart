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
    TestResultsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TestResultsPage(),
      );
    },
    TestWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const TestWrapperPage()),
      );
    },
    TestingRoute.name: (routeData) {
      final args = routeData.argsAs<TestingRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TestingPage(
          key: args.key,
          mode: args.mode,
        ),
      );
    },
  };
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
class TestWrapperRoute extends PageRouteInfo<void> {
  const TestWrapperRoute({List<PageRouteInfo>? children})
      : super(
          TestWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'TestWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TestingPage]
class TestingRoute extends PageRouteInfo<TestingRouteArgs> {
  TestingRoute({
    Key? key,
    required TestMode mode,
    List<PageRouteInfo>? children,
  }) : super(
          TestingRoute.name,
          args: TestingRouteArgs(
            key: key,
            mode: mode,
          ),
          initialChildren: children,
        );

  static const String name = 'TestingRoute';

  static const PageInfo<TestingRouteArgs> page =
      PageInfo<TestingRouteArgs>(name);
}

class TestingRouteArgs {
  const TestingRouteArgs({
    this.key,
    required this.mode,
  });

  final Key? key;

  final TestMode mode;

  @override
  String toString() {
    return 'TestingRouteArgs{key: $key, mode: $mode}';
  }
}
