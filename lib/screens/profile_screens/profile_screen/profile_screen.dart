import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/routes/app_routes.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/app_bar/custom_appbar_auth.dart';
import 'package:aura/widgets/app_button/aura_button.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/app_image_circular.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      gradient: const LinearGradient(
        begin: Alignment(0.00, 0.00),
        end: Alignment(0.89, 1.00),
        colors: [Color(0xFF6D8590), Color(0xFF2D373E)],
      ),
      body: Column(
        spacing: AppSize.size.height * 0.01,
        children: [
          CustomAppBarAuth(
            isProgressShown: false,
            action: Row(
              spacing: AppSize.width(value: 20),
              children: [
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.instance.myAboutMeScreen);
                  },
                  child: AppImage(
                    width: AppSize.width(value: 24),
                    path: AssetsIconsPath.instance.icOptions,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.instance.prefrenceScreen);
                  },
                  child: AppImage(
                    width: AppSize.width(value: 24),
                    path: AssetsIconsPath.instance.icSetting,
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: AppColors.instance.blue, width: 2),
                ),
                child: AppImageCircular(
                  width: AppSize.width(value: 120),
                  path: AssetsIconsPath.instance.profileIcon,
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.instance.profileEditScreen);
                  },
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: AppColors.instance.blue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.edit,
                      color: AppColors.instance.white,
                      size: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),

          AppText(
            data: "SARAH",
            fontSize: AppSize.width(value: 24),
            fontWeight: FontWeight.w600,
            color: AppColors.instance.white,
          ),
          AppText(
            data: "23",
            fontSize: AppSize.width(value: 18),
            fontWeight: FontWeight.w600,
            color: AppColors.instance.white,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSize.size.width * 0.1,
              vertical: AppSize.size.height * 0.15,
            ),
            child: Column(
              spacing: AppSize.size.height * 0.03,
              children: [
                AuraButton(
                  height: 44,
                  onTap: () {
                    Get.toNamed(AppRoutes.instance.memberPrefferenceScreen);
                  },
                  text: "MY PREFERENCES",
                ),
                AuraButton(
                  height: 44,
                  onTap: () {
                    Get.toNamed(AppRoutes.instance.unlockAuraScreen);
                  },
                  text: "UNLOCK AURA+",
                ),
                AuraButton(
                  height: 44,
                  onTap: () {
                    Get.toNamed(AppRoutes.instance.shopScreen);
                  },
                  text: "AURA SHOP",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
