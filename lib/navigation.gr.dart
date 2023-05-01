// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import 'main_page/main_page.dart' as _i1;
import 'testing/domain/model/test_mode.dart' as _i7;
import 'testing/ui/pages/test_page/test_page.dart' as _i3;
import 'testing/ui/pages/test_results_page/test_results_page.dart' as _i4;
import 'testing/ui/pages/test_wrapper_page.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainPage(),
      );
    },
    TestWrapperRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.TestWrapperPage(),
      );
    },
    TestRoute.name: (routeData) {
      final args = routeData.argsAs<TestRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.TestPage(
          key: args.key,
          mode: args.mode,
        ),
      );
    },
    TestResultsRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.TestResultsPage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          MainRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          TestWrapperRoute.name,
          path: '/test-wrapper-page',
          children: [
            _i5.RouteConfig(
              TestRoute.name,
              path: 'test-page',
              parent: TestWrapperRoute.name,
            ),
            _i5.RouteConfig(
              TestResultsRoute.name,
              path: 'test-results-page',
              parent: TestWrapperRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute()
      : super(
          MainRoute.name,
          path: '/',
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.TestWrapperPage]
class TestWrapperRoute extends _i5.PageRouteInfo<void> {
  const TestWrapperRoute({List<_i5.PageRouteInfo>? children})
      : super(
          TestWrapperRoute.name,
          path: '/test-wrapper-page',
          initialChildren: children,
        );

  static const String name = 'TestWrapperRoute';
}

/// generated route for
/// [_i3.TestPage]
class TestRoute extends _i5.PageRouteInfo<TestRouteArgs> {
  TestRoute({
    _i6.Key? key,
    required _i7.TestMode mode,
  }) : super(
          TestRoute.name,
          path: 'test-page',
          args: TestRouteArgs(
            key: key,
            mode: mode,
          ),
        );

  static const String name = 'TestRoute';
}

class TestRouteArgs {
  const TestRouteArgs({
    this.key,
    required this.mode,
  });

  final _i6.Key? key;

  final _i7.TestMode mode;

  @override
  String toString() {
    return 'TestRouteArgs{key: $key, mode: $mode}';
  }
}

/// generated route for
/// [_i4.TestResultsPage]
class TestResultsRoute extends _i5.PageRouteInfo<void> {
  const TestResultsRoute()
      : super(
          TestResultsRoute.name,
          path: 'test-results-page',
        );

  static const String name = 'TestResultsRoute';
}
