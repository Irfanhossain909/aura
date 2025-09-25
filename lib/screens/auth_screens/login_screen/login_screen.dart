import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/routes/app_routes.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appbar_auth.dart';
import 'package:aura/widgets/app_button/aura_button.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image_for_auth.dart';
import 'package:aura/widgets/input_text/app_input_widget_two.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImageForAuth(
      body: Column(
        children: [
          CustomAppBarAuth(logoUnderText: "LOGIN", progressValue: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              spacing: AppSize.size.height * 0.01,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppImage(
                  width: AppSize.size.width * 0.35,
                  path: AssetsIconsPath.instance.auraIcon,
                ),
                Gap(height: AppSize.size.height * 0.11),
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
                AuraButton(
                  onTap: () {
                    Get.toNamed(AppRoutes.instance.navigationScreen);
                  },
                  filColor: AppColors.instance.blue,
                  textColor: AppColors.instance.white,
                  text: "LOGIN",
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.instance.forgetPasswordScreen);
                  },
                  child: AppText(
                    data: "FORGOT PASSWORD?",
                    color: AppColors.instance.white,
                  ),
                ),
                // Gap(height: AppSize.size.height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: AppSize.width(value: 12),
                  children: [
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: AppColors.instance.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: AppImage(
                        width: AppSize.width(value: 18),
                        path: AssetsIconsPath.instance.apple,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: AppColors.instance.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: AppImage(
                        width: AppSize.width(value: 18),
                        path: AssetsIconsPath.instance.google,
                      ),
                    ),
                  ],
                ),
                AppText(
                  data: "BY SIGNING UP, YOU AGREE TO OUR TERMS OF SERVICE",
                  color: AppColors.instance.white,
                ),

                // Continue button
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(value: 88),
                  ),
                  child: AuraButton(
                    onTap: () {
                      Get.toNamed(AppRoutes.instance.signUpScreen);
                    },
                    text: "SIGNUP",
                    textColor: AppColors.instance.blue,
                  ),
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
