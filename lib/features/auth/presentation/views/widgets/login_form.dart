import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:z_store_app/core/helper/extensions.dart';
import 'package:z_store_app/core/helper/space_extension.dart';
import 'package:z_store_app/core/helper/validations.dart';
import 'package:z_store_app/core/routing/routes.dart';
import 'package:z_store_app/core/theming/styles/text_styles.dart';
import 'package:z_store_app/core/widgets/custom_elevated_button.dart';
import 'package:z_store_app/core/widgets/custom_text_button.dart';
import 'package:z_store_app/core/widgets/custom_text_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  bool isObscure = true;
  Country selectedCountry = Country(
    phoneCode: '20',
    countryCode: 'EG',
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: 'Egypt',
    example: '1234567890',
    displayName: 'Egypt',
    displayNameNoCountryCode: 'Egypt',
    e164Key: '',
  );

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomTextFormField(
              controller: phoneController,
              labelText: '123-456-7890',
              keyboardType: TextInputType.phone,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(11),
              ],
              validator: (value) => phoneValidator(value, context),
              prefixIcon: GestureDetector(
                onTap: () {
                  showCountryPicker(
                    context: context,
                    showPhoneCode: true,
                    onSelect: (Country country) {
                      setState(() {
                        selectedCountry = country;
                      });
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${selectedCountry.flagEmoji} +${selectedCountry.phoneCode}',
                        style: TextStyles.bold14Black,
                      ),
                      const Icon(Icons.arrow_drop_down, size: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
          20.height,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomTextFormField(
              controller: passwordController,
              labelText: 'password',
              validator: (value) {
                return passwordValidator(value, context);
              },
              isObscureText: isObscure,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() => isObscure = !isObscure);
                },
                icon: Icon(
                  isObscure ? Icons.visibility_off : Icons.visibility,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          50.height,
          CustomElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {}
            },
            minimumSize: Size(double.infinity, 50.h),
            text: "Sign In",
            style: TextStyle(color: Colors.white),
          ),
          20.height,

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Didn't have any account? ", style: TextStyles.w500Gray15),
              CustomTextButton(
                onPressed: () {
                  context.pushNamed(Routes.registerView);
                },
                text: "Sign Up here",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
          10.height,
        ],
      ),
    );
  }
}
