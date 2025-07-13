import 'package:flutter/material.dart';
import 'package:z_store_app/core/helper/space_extension.dart';
import 'package:z_store_app/core/theming/styles/text_styles.dart';
import 'package:z_store_app/features/auth/presentation/views/widgets/login_form.dart';
import 'package:z_store_app/generated/assets.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.imagesLogo2,
                  width: 70,
                  height: 70,
                  fit: BoxFit.contain,
                ),
                RichText(
                  text: TextSpan(
                    text: 'ZAG',
                    style: TextStyles.bold14Red.copyWith(fontSize: 25),
                    children: [
                      TextSpan(
                        text: 'SYSTEMS',
                        style: TextStyles.w400Gray14.copyWith(fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            110.height,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text('Login', style: TextStyles.bold18Black),
                ),
                12.height,
                const LoginForm(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
