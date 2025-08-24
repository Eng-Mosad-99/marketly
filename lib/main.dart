import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketly/core/routes/app_routes.dart';
import 'package:marketly/core/routes/route_generator.dart';

void main() {
  runApp(const Marketly());
}

class Marketly extends StatelessWidget {
  const Marketly({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
       designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.login,
          onGenerateRoute: AppRouter.onGenerateRoute,
        );
      }
    );
  }
}