import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uni_events/screens/home.dart';

class AppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) {
          return MaterialPage(child: HomePage());
        },
      )
    ],
    redirect: (context, state) {
      bool isAuthenticated = false;
      if (!isAuthenticated && state.subloc == '/') {
        return '/login';
      }
      return null;
    },
  );
}
