import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:savart_remaster/src/app_wrapper.dart';
import 'package:savart_remaster/src/feature/authentication/views/login.dart';
import 'package:savart_remaster/src/feature/onboarding/views/onboarding.dart';
import 'package:savart_remaster/src/feature/profile/views/profile.dart';
import 'package:savart_remaster/src/global/views/splash.dart';

final router = GoRouter(initialLocation: SplashView.route, routes: [
  GoRoute(
    path: SplashView.route,
    builder: (BuildContext context, GoRouterState state) {
      return const SplashView();
    },
  ),

  GoRoute(
    path: ProfileView.route,
    builder: (BuildContext context, GoRouterState state) {
      return const ProfileView();
    },
  ),
  GoRoute(
    path: ApplicationWrapper.route,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        key: state.pageKey,
        transitionsBuilder: ((context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
            child: child,
          );
        }),
        child: const ApplicationWrapper(),
      );
    },
    builder: (BuildContext context, GoRouterState state) {
      return const ApplicationWrapper();
    },
  ),

  GoRoute(
    path: LoginView.route,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        key: state.pageKey,
        transitionsBuilder: ((context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
            child: child,
          );
        }),
        child: const LoginView(),
      );
    },
    builder: (BuildContext context, GoRouterState state) {
      return const LoginView();
    },
  ),

  GoRoute(
    path: OnBoardingView.route,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        transitionDuration: const Duration(milliseconds: 500),
        key: state.pageKey,
        transitionsBuilder: ((context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
            child: child,
          );
        }),
        child: const OnBoardingView(),
      );
    },
    builder: (BuildContext context, GoRouterState state) {
      return const OnBoardingView();
    },
  ),
]);

//ProfileView