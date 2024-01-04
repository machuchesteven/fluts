import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class AppNavigation {
  AppNavigation._();

  static String initR = '/home';

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
      initialLocation: initR,
      navigatorKey: _rootNavigatorKey,
      routes: <RouteBase>[
        // MainWrapper for Routes
        StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) {
              return MainWrapper();
            },
            branches: <StatefulShellBranch>[])
      ]);
}
