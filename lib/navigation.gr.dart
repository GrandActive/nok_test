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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import 'mode_select_page.dart' as _i1;
import 'training/ui/pages/test_page.dart' as _i4;
import 'training/ui/pages/test_results_page.dart' as _i5;
import 'training/ui/pages/test_wrapper_page.dart' as _i3;
import 'training/ui/pages/training_start_page.dart' as _i2;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    ModeSelectRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.ModeSelectPage(),
      );
    },
    TrainingStartRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.TrainingStartPage(),
      );
    },
    TestWrapperRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.TestWrapperPage(),
      );
    },
    TestRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.TestPage(),
      );
    },
    TestResultsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.TestResultsPage(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          ModeSelectRoute.name,
          path: '/',
        ),
        _i6.RouteConfig(
          TrainingStartRoute.name,
          path: '/training-start-page',
        ),
        _i6.RouteConfig(
          TestWrapperRoute.name,
          path: '/test-wrapper-page',
          children: [
            _i6.RouteConfig(
              TestRoute.name,
              path: 'test-page',
              parent: TestWrapperRoute.name,
            ),
            _i6.RouteConfig(
              TestResultsRoute.name,
              path: 'test-results-page',
              parent: TestWrapperRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.ModeSelectPage]
class ModeSelectRoute extends _i6.PageRouteInfo<void> {
  const ModeSelectRoute()
      : super(
          ModeSelectRoute.name,
          path: '/',
        );

  static const String name = 'ModeSelectRoute';
}

/// generated route for
/// [_i2.TrainingStartPage]
class TrainingStartRoute extends _i6.PageRouteInfo<void> {
  const TrainingStartRoute()
      : super(
          TrainingStartRoute.name,
          path: '/training-start-page',
        );

  static const String name = 'TrainingStartRoute';
}

/// generated route for
/// [_i3.TestWrapperPage]
class TestWrapperRoute extends _i6.PageRouteInfo<void> {
  const TestWrapperRoute({List<_i6.PageRouteInfo>? children})
      : super(
          TestWrapperRoute.name,
          path: '/test-wrapper-page',
          initialChildren: children,
        );

  static const String name = 'TestWrapperRoute';
}

/// generated route for
/// [_i4.TestPage]
class TestRoute extends _i6.PageRouteInfo<void> {
  const TestRoute()
      : super(
          TestRoute.name,
          path: 'test-page',
        );

  static const String name = 'TestRoute';
}

/// generated route for
/// [_i5.TestResultsPage]
class TestResultsRoute extends _i6.PageRouteInfo<void> {
  const TestResultsRoute()
      : super(
          TestResultsRoute.name,
          path: 'test-results-page',
        );

  static const String name = 'TestResultsRoute';
}
