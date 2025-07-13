import 'package:flutter/material.dart';
import 'package:z_store_app/core/helper/extensions.dart';
import 'package:z_store_app/core/routing/routes.dart';
import 'package:z_store_app/generated/assets.dart';

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
        image: DecorationImage(image: AssetImage(Assets.imagesSplash),fit: BoxFit.cover),
      ),
      child: Scaffold(backgroundColor: Colors.transparent),
    );
  }
}
