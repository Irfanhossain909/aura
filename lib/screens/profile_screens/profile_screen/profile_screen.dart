import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/routes/app_routes.dart';
import 'package:aura/screens/profile_screens/shop_screeen/shop_screen.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appbar_auth.dart';
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
          Gap(height: AppSize.size.height * 0.09),
          Column(
            spacing: AppSize.size.height * 0.03,
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.instance.memberPrefferenceScreen);
                },
                child: AppImage(
                  width: AppSize.size.width * 0.8,
                  path: AssetsIconsPath.instance.preferenceImg1,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.instance.unlockAuraScreen);
                },
                child: AppImage(
                  width: AppSize.size.width * 0.8,
                  path: AssetsIconsPath.instance.auraPlusImg1,
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSize.width(value: 8),
                    ),
                    child: AppImage(
                      path: AssetsIconsPath.instance.auraShopImg1,
                    ),
                  ),
                  Positioned.fill(
                    top: 30,
                    bottom: 0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        spacing: AppSize.width(value: 4),
                        children: [
                          ShowChad(
                            iconPath: AssetsIconsPath.instance.worldIcon,
                            icColor: AppColors.instance.blue,

                            text2: "Relocation",
                            text3: "GAME",
                            onTap: () {
                              Get.toNamed(
                                AppRoutes.instance.unlimitedRelocationScreen,
                              );
                            },
                          ),
                          ShowChad(
                            iconPath: AssetsIconsPath.instance.loveCard,
                            icColor: AppColors.instance.blue,
                            text1: "ICE",
                            text2: "BREAKERS",
                            text3: "BUNDLES",
                            onTap: () {
                              Get.toNamed(AppRoutes.instance.iceBreakScreen);
                            },
                          ),

                          ShowChad(
                            iconPath: AssetsIconsPath.instance.time,
                            icColor: AppColors.instance.blue,
                            // text1: "PROFILE",
                            text2: "add time",
                            text3: "BUNDLES",
                            onTap: () {
                              Get.toNamed(AppRoutes.instance.getTImeScreen);
                            },
                          ),
                          ShowChad(
                            iconPath: AssetsIconsPath.instance.currencyIc,
                            // text1: "GET MORE",
                            text2: "Get aura",
                            text3: "Game",
                            onTap: () {
                              Get.toNamed(AppRoutes.instance.giftScreen);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // AuraButton(
              //   height: 44,
              //   onTap: () {
              //     Get.toNamed(AppRoutes.instance.memberPrefferenceScreen);
              //   },
              //   text: "MY PREFERENCES",
              // ),
              // AuraButton(
              //   height: 44,
              //   onTap: () {
              //     Get.toNamed(AppRoutes.instance.unlockAuraScreen);
              //   },
              //   text: "UNLOCK AURA+",
              // ),
              // AuraButton(
              //   height: 44,
              //   onTap: () {
              //     Get.toNamed(AppRoutes.instance.shopScreen);
              //   },
              //   text: "AURA SHOP",
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
