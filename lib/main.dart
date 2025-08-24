import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:marketly/core/routes/app_routes.dart';
import 'package:marketly/core/routes/route_generator.dart';
import 'core/di/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  setupServiceLocator();
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
        builder: (context, child) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: AppRoutes.login,
            onGenerateRoute: AppRouter.onGenerateRoute,
          );
        });
  }
}