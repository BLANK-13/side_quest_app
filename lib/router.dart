import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uni_events/constants/contants.dart';
import 'package:uni_events/screens/login_page.dart';
import 'package:uni_events/screens/register_page.dart';
import 'package:uni_events/widgets/bottom_bar.dart';

class AppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: RoutingConstants.home,
        pageBuilder: (context, state) {
          return const MaterialPage(child: BottomBarWidget());
        },
      ),
      GoRoute(
        path: RoutingConstants.login,
        pageBuilder: (context, state) {
          return const MaterialPage(child: LoginPage());
        },
      ),
      GoRoute(
        path: RoutingConstants.register,
        pageBuilder: (context, state) {
          return const MaterialPage(child: RegisterPage());
        },
      ),
    ],
    redirect: (context, state) {
      bool isAuthenticated = false;
      // if (!isAuthenticated && state.subloc == RoutingConstants.home) {
      //   return RoutingConstants.register;
      // }
      return null;
    },
  );
}
