import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../../ui/screens/screens.dart';

import 'app_routes.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

NavigatorState get navigator => _navigatorKey.currentState!;

final GoRouter router = GoRouter(
  navigatorKey: _navigatorKey,
  routes: <RouteBase>[
    GoRoute(
        path: AppRoutes.welcomeAuths,
        builder: (BuildContext context, GoRouterState state) {
          return const WelcomeAuthScreen();
        }),
    GoRoute(
        path: AppRoutes.splash,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        }),
    GoRoute(
      path: AppRoutes.onBoarding,
      builder: (BuildContext context, GoRouterState state) {
        return const OnBoardingScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.logIn,
      builder: (BuildContext context, GoRouterState state) {
        return const LogInScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.signUp,
      builder: (BuildContext context, GoRouterState state) {
        return const SignUpScreen();
      },
    ),
  ],
);
