import 'package:flutter/material.dart';
import 'package:z_store_app/core/helper/extensions.dart';
import 'package:z_store_app/core/routing/routes.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () => context.pushReplacementNamed(Routes.homeLayout),
    );
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/splash.jpg')),
      ),
      child: Scaffold(backgroundColor: Colors.transparent),
    );
  }
}
