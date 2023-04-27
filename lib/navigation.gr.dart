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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import 'main_page/main_page.dart' as _i1;
import 'mode_select_page.dart' as _i2;
import 'testing/domain/model/test_mode.dart' as _i9;
import 'testing/ui/pages/test_page/test_page.dart' as _i5;
import 'testing/ui/pages/test_results_page/test_results_page.dart' as _i6;
import 'testing/ui/pages/test_wrapper_page.dart' as _i4;
import 'testing/ui/pages/training_start_page.dart' as _i3;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainPage(),
      );
    },
    ModeSelectRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.ModeSelectPage(),
      );
    },
    TrainingStartRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.TrainingStartPage(),
      );
    },
    TestWrapperRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.TestWrapperPage(),
      );
    },
    TestRoute.name: (routeData) {
      final args = routeData.argsAs<TestRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.TestPage(
          key: args.key,
          mode: args.mode,
        ),
      );
    },
    TestResultsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.TestResultsPage(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          MainRoute.name,
          path: '/',
        ),
        _i7.RouteConfig(
          ModeSelectRoute.name,
          path: '/mode-select-page',
        ),
        _i7.RouteConfig(
          TrainingStartRoute.name,
          path: '/training-start-page',
        ),
        _i7.RouteConfig(
          TestWrapperRoute.name,
          path: '/test-wrapper-page',
          children: [
            _i7.RouteConfig(
              TestRoute.name,
              path: 'test-page',
              parent: TestWrapperRoute.name,
            ),
            _i7.RouteConfig(
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
class MainRoute extends _i7.PageRouteInfo<void> {
  const MainRoute()
      : super(
          MainRoute.name,
          path: '/',
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.ModeSelectPage]
class ModeSelectRoute extends _i7.PageRouteInfo<void> {
  const ModeSelectRoute()
      : super(
          ModeSelectRoute.name,
          path: '/mode-select-page',
        );

  static const String name = 'ModeSelectRoute';
}

/// generated route for
/// [_i3.TrainingStartPage]
class TrainingStartRoute extends _i7.PageRouteInfo<void> {
  const TrainingStartRoute()
      : super(
          TrainingStartRoute.name,
          path: '/training-start-page',
        );

  static const String name = 'TrainingStartRoute';
}

/// generated route for
/// [_i4.TestWrapperPage]
class TestWrapperRoute extends _i7.PageRouteInfo<void> {
  const TestWrapperRoute({List<_i7.PageRouteInfo>? children})
      : super(
          TestWrapperRoute.name,
          path: '/test-wrapper-page',
          initialChildren: children,
        );

  static const String name = 'TestWrapperRoute';
}

/// generated route for
/// [_i5.TestPage]
class TestRoute extends _i7.PageRouteInfo<TestRouteArgs> {
  TestRoute({
    _i8.Key? key,
    required _i9.TestMode mode,
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

  final _i8.Key? key;

  final _i9.TestMode mode;

  @override
  String toString() {
    return 'TestRouteArgs{key: $key, mode: $mode}';
  }
}

/// generated route for
/// [_i6.TestResultsPage]
class TestResultsRoute extends _i7.PageRouteInfo<void> {
  const TestResultsRoute()
      : super(
          TestResultsRoute.name,
          path: 'test-results-page',
        );

  static const String name = 'TestResultsRoute';
}
