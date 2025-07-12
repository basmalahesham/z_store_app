import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:z_store_app/core/routing/app_router.dart';
import 'package:z_store_app/core/routing/routes.dart';
import 'package:z_store_app/core/theming/colors.dart';

void main() {
  runApp(
    ScreenUtilInit(
      builder: (context, child) => MyApp(appRouter: AppRouter()),
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: ColorsManager.kPrimaryColor,
      ),
      initialRoute: Routes.splashView,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
