import 'package:aura/const/app_colors.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appbar_auth.dart';
import 'package:aura/widgets/app_button/aura_button.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image_for_auth.dart';
import 'package:aura/widgets/input_text/app_input_widget_two.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImageForAuth(
      body: Column(
        children: [
          CustomAppBarAuth(logoUnderText: "LOGIN", progressValue: 1),
          Gap(height: AppSize.size.height * 0.18),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              spacing: AppSize.size.height * 0.01,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                  data: "LOGIN",
                  fontSize: AppSize.width(value: 34),
                  color: AppColors.instance.white,
                ),
                Gap(height: 12),
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

                // Continue button
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(value: 60),
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
                    horizontal: AppSize.width(value: 90),
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
