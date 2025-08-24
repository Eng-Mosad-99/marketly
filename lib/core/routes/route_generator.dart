import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:marketly/core/routes/app_routes.dart';
import 'package:marketly/features/auth/presentation/views/sign_in_view.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    log(settings.name.toString());
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(
          builder: (_) => const SignInView(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
