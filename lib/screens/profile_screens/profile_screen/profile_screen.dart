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
      body: Column(
        spacing: AppSize.size.height * 0.04,
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
              AppImageCircular(
                width: AppSize.width(value: 120),
                path: AssetsIconsPath.instance.profileIcon,
              ),
              Positioned(
                bottom: 0,
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
            fontSize: AppSize.width(value: 18),
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
            padding: const EdgeInsets.all(40.0),
            child: Column(
              spacing: AppSize.size.height * 0.02,
              children: [
                AuraButton(
                  onTap: () {
                    Get.toNamed(AppRoutes.instance.memberPrefferenceScreen);
                  },
                  text: "MY PREFERENCES",
                ),
                AuraButton(
                  onTap: () {
                    Get.toNamed(AppRoutes.instance.unlockAuraScreen);
                  },
                  text: "UNLOCK AURA+",
                ),
                AuraButton(
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
