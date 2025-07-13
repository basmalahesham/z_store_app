import 'package:flutter/material.dart';
import 'package:z_store_app/core/helper/extensions.dart';
import 'package:z_store_app/core/theming/colors.dart';
import 'package:z_store_app/features/auth/presentation/views/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: ColorsManager.kPrimaryColor,
        backgroundColor: ColorsManager.kPrimaryColor,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),

      body: SafeArea(child: RegisterViewBody()),
    );
  }
}
