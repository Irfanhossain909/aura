import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/routes/app_routes.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appbar_auth.dart';
import 'package:aura/widgets/app_button/aura_button.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image_for_auth.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImageForAuth(
      body: Column(
        children: [
          CustomAppBarAuth(logoUnderText: "LOGIN", progressValue: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 76),
            child: Column(
              spacing: AppSize.size.height * 0.01,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppImage(
                  width: AppSize.size.width * 0.35,
                  path: AssetsIconsPath.instance.auraIcon,
                ),
                Gap(height: AppSize.size.height * 0.25),

                AuraButton(
                  onTap: () {
                    Get.toNamed(AppRoutes.instance.signUpScreen);
                  },
                  filColor: AppColors.instance.blue,
                  textColor: AppColors.instance.white,
                  text: "CREATE ACCOUNT",
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(value: 40),
                  ),
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.instance.loginScreen);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSize.width(value: 50),
                        vertical: AppSize.width(value: 8),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: AppColors.instance.white),
                      ),
                      child: AppText(
                        data: "LOGIN",
                        color: AppColors.instance.white,
                      ),
                    ),
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
