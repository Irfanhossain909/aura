import 'package:aura/const/app_colors.dart';
import 'package:aura/const/app_const.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/routes/app_routes.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
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
      body: SafeArea(
        child: Column(
          children: [
            // CustomAppBarAuth(logoUnderText: "LOGIN", isProgressShown: false),
            Gap(height: AppSize.size.height * 0.04),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppImage(
                    width: AppSize.size.width * 0.50,
                    path: AssetsIconsPath.instance.auraIcon,
                  ),
                  Gap(height: AppSize.size.height * 0.16),
                  AppInputWidgetTwo(
                    height: AppSize.width(value: 44),
                    borderRadius: 8,
                    fillColor: Colors.transparent,
                    hintText: "EMAIL",
                    isEmail: true,
                  ),
                  AppInputWidgetTwo(
                    height: AppSize.width(value: 44),
                    borderRadius: 8,
                    fillColor: Colors.transparent,
                    hintText: "PASSWORD",
                    isPassWord: true,
                  ),
                  Gap(height: AppSize.size.height * 0.02),
                  AuraButton(
                    onTap: () {
                      Get.toNamed(AppRoutes.instance.navigationScreen);
                    },
                    borderRadius: 20,
                    height: 44,
                    filColor: AppColors.instance.blue,
                    textColor: AppColors.instance.white,
                    text: "LOGIN",
                  ),
                  Gap(height: AppSize.size.height * 0.02),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed(AppRoutes.instance.forgetPasswordScreen);
                        },
                        child: AppText(
                          textAlign: TextAlign.start,
                          data: "FORGOT PASSWORD?",
                          color: AppColors.instance.white,
                        ),
                      ),
                      SizedBox(),
                    ],
                  ),
                  Gap(height: AppSize.size.height * 0.02),
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
                  Gap(height: AppSize.size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        data: "BY SIGNING UP, YOU AGREE TO OUR ",
                        color: AppColors.instance.white,
                      ),
                      Text(
                        "TERMS OF SERVICE",
                        style: TextStyle(
                          color: AppColors.instance.white,
                          fontFamily: AppConst.fontFamily1,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.instance.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Gap(height: AppSize.size.height * 0.02),
                  // Continue button
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSize.width(value: 110),
                    ),
                    child: AuraButton(
                      fontSize: 16,
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
      ),
    );
  }
}
