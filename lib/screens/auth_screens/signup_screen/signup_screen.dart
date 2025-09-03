import 'package:aura/const/app_colors.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appbar_auth.dart';
import 'package:aura/widgets/app_button/aura_button.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image_for_auth.dart';
import 'package:aura/widgets/input_text/app_input_widget_two.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImageForAuth(
      body: Column(
        children: [
          CustomAppBarAuth(logoUnderText: "SIGNUP", progressValue: 1),
          Gap(height: AppSize.size.height * 0.14),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              spacing: AppSize.size.height * 0.006,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                  data: "GET SETUP",
                  fontSize: AppSize.width(value: 24),
                  color: AppColors.instance.white,
                ),
                AppInputWidgetTwo(
                  height: AppSize.width(value: 36),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: AppSize.width(value: 12),
                  ),
                  fillColor: Colors.transparent,
                  hintText: "First Name",
                ),
                AppInputWidgetTwo(
                  height: AppSize.width(value: 36),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: AppSize.width(value: 12),
                  ),
                  fillColor: Colors.transparent,
                  hintText: "Last Name",
                ),
                AppInputWidgetTwo(
                  height: AppSize.width(value: 36),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: AppSize.width(value: 12),
                  ),
                  fillColor: Colors.transparent,
                  hintText: "E-mail Address",
                  isEmail: true,
                ),
                AppInputWidgetTwo(
                  height: AppSize.width(value: 36),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: AppSize.width(value: 12),
                  ),
                  fillColor: Colors.transparent,
                  hintText: "Password",
                  isPassWord: true,
                ),
                AppInputWidgetTwo(
                  height: AppSize.width(value: 36),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: AppSize.width(value: 12),
                  ),
                  fillColor: Colors.transparent,
                  hintText: "Confirm Password",
                  isPassWord: true,
                ),

                // Continue button
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(value: 120),
                    vertical: AppSize.width(value: 12),
                  ),
                  child: AuraButton(
                    filColor: AppColors.instance.blue,
                    textColor: AppColors.instance.white,
                    text: "CONFIRM",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(value: 150),
                  ),
                  child: AuraButton(text: "Back"),
                ),

                // Back button
              ],
            ),
          ),
        ],
      ),
    );
  }
}
