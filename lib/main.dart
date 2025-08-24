import 'package:flutter/material.dart';
import 'package:marketly/core/routes/app_routes.dart';
import 'package:marketly/core/routes/route_generator.dart';

void main() {
  runApp(const Marketly());
}

class Marketly extends StatelessWidget {
  const Marketly({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.login,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}