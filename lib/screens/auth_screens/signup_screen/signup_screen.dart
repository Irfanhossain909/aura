import 'package:aura/const/app_colors.dart';
import 'package:aura/routes/app_routes.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appbar_auth.dart';
import 'package:aura/widgets/app_button/aura_button.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image_for_auth.dart';
import 'package:aura/widgets/input_text/app_input_widget_two.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImageForAuth(
      body: Column(
        children: [
          CustomAppBarAuth(logoUnderText: "SIGNUP", progressValue: 2),
          Gap(height: AppSize.size.height * 0.00),
          AppText(
            data: "GET SETUP",
            fontSize: AppSize.width(value: 36),
            color: AppColors.instance.white,
          ),
          Gap(height: AppSize.size.height * 0.13),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              spacing: AppSize.size.height * 0.006,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppInputWidgetTwo(
                  height: AppSize.width(value: 40),

                  fillColor: Colors.transparent,
                  hintText: "First Name",
                ),
                AppInputWidgetTwo(
                  height: AppSize.width(value: 40),

                  fillColor: Colors.transparent,
                  hintText: "Last Name",
                ),
                AppInputWidgetTwo(
                  height: AppSize.width(value: 40),

                  fillColor: Colors.transparent,
                  hintText: "E-mail Address",
                  isEmail: true,
                ),
                AppInputWidgetTwo(
                  height: AppSize.width(value: 40),

                  fillColor: Colors.transparent,
                  hintText: "Password",
                  isPassWord: true,
                ),
                AppInputWidgetTwo(
                  height: AppSize.width(value: 40),

                  fillColor: Colors.transparent,
                  hintText: "Confirm Password",

                  isPassWord: true,
                ),
                Gap(height: AppSize.size.height * 0.12),
                // Continue button
                AuraButton(
                  height: AppSize.width(value: 42),
                  weidth: AppSize.width(value: 117),
                  borderRadius: 30,
                  onTap: () {
                    Get.toNamed(AppRoutes.instance.verifyCodeScreen);
                  },
                  filColor: AppColors.instance.blue,
                  textColor: AppColors.instance.white,
                  text: "CONFIRM",
                ),
                Gap(height: AppSize.size.height * 0.001),
                AuraButton(
                  weidth: AppSize.width(value: 60),
                  height: AppSize.width(value: 32),
                  borderRadius: 30,
                  fontSize: 12,
                  text: "Back",
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
