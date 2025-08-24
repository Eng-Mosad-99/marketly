import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketly/core/helper/sizing.dart';
import 'package:marketly/core/utils/app_assets.dart';
import 'package:marketly/core/utils/app_strings.dart';
import 'package:marketly/core/utils/app_styles.dart';
import 'package:marketly/core/utils/color_manager.dart';
import 'package:marketly/core/widgets/custom_elevated_button.dart';
import 'package:marketly/core/widgets/custom_text_form_field.dart';
import 'package:svg_flutter/svg.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 100.w, vertical: 50.h),
                  child: Image.asset(
                    AppAssets.logo,
                  ),
                ),
                verticalSpace(40),
                Text(
                  AppStrings.welcomeSignIn,
                  style: AppStyles.semiBold24White,
                ),
                Text(
                  AppStrings.pleaseSignIn,
                  style: AppStyles.light16White.copyWith(
                    color: ColorManager.whiteColor.withOpacity(0.7),
                  ),
                ),
                verticalSpace(20),
                Text(
                  AppStrings.username,
                  style: AppStyles.light16White.copyWith(
                    color: ColorManager.whiteColor.withOpacity(0.7),
                  ),
                ),
                CustomTextFormField(
                  textStyle: AppStyles.light18Black,
                  hintText: AppStrings.emailAddress,
                  hintStyle: AppStyles.light18Black,
                  keyboardType: TextInputType.emailAddress,
                ),
                verticalSpace(20),
                Text(
                  AppStrings.password,
                  style: AppStyles.light16White.copyWith(
                    color: ColorManager.whiteColor.withOpacity(0.7),
                  ),
                ),
                CustomTextFormField(
                  textStyle: AppStyles.light18Black,
                  hintText: AppStrings.password,
                  hintStyle: AppStyles.light18Black,
                  keyboardType: TextInputType.visiblePassword,
                ),
                verticalSpace(15),
                Text(
                  AppStrings.forgetPassword,
                  textAlign: TextAlign.end,
                  style: AppStyles.regular18White,
                ),
                verticalSpace(20),
                CustomElevatedButton(
                  text: AppStrings.login,
                  onPressed: () {
                    //! TODO: Login action
                  },
                  backgroundColor: ColorManager.whiteColor,
                  textStyle: AppStyles.semiBold20Primary,
                ),
                verticalSpace(20),
               Text.rich(
  TextSpan(
    children: [
      TextSpan(
        text: ' ${AppStrings.dontHaveAccount}',
        style: AppStyles.medium18White,
      ),
      TextSpan(
        text: ' ${AppStrings.createAccount}',
        style: AppStyles.medium18White,
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            // TODO: Navigate to your sign up page
            // Navigator.pushNamed(context, '/signUp');
          },
      ),
    ],
  ),
  textAlign: TextAlign.center,
),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
