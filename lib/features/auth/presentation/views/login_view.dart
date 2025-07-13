import 'package:flutter/material.dart';
import 'package:z_store_app/core/helper/extensions.dart';
import 'package:z_store_app/core/routing/routes.dart';
import 'package:z_store_app/core/theming/colors.dart';
import 'package:z_store_app/features/auth/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: ColorsManager.kPrimaryColor,
        backgroundColor: ColorsManager.kPrimaryColor,
        leading: IconButton(onPressed: () {
          context.pushReplacementNamed(Routes.homeLayout);
        }, icon: Icon(Icons.home)),
      ),
      body: SafeArea(child: LoginViewBody()),
    );
  }
}
