import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/routes/app_routes.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appbar_auth.dart';
import 'package:aura/widgets/app_button/app_button.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image_for_auth.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImageForAuth(
      body: Column(
        children: [
          CustomAppBarAuth(
            isProgressShown: false,
            logoUnderText: "",
            action: Row(
              spacing: AppSize.width(value: 4),
              children: [
                AppImage(
                  path: AssetsIconsPath.instance.appPlus,
                  width: AppSize.width(value: 18),
                ),
                AppText(
                  data: "1200",
                  fontSize: AppSize.width(value: 22),
                  fontWeight: FontWeight.w600,
                  color: AppColors.instance.white,
                ),
                AppImage(
                  path: AssetsIconsPath.instance.currencyIc,
                  width: AppSize.width(value: 18),
                ),
              ],
            ),
          ),
          Gap(height: AppSize.size.height * 0.18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ShowChad(
                iconPath: AssetsIconsPath.instance.ice,
                text1: "ICE",
                text2: "BREAKERS",
                text3: "GAME",
                onTap: () {
                  Get.toNamed(AppRoutes.instance.iceBreakScreen);
                },
              ),
              ShowChad(
                iconPath: AssetsIconsPath.instance.time,
                text1: "ADD",
                text2: "TIME",
                text3: "BUNDLES",
                onTap: () {},
              ),
            ],
          ),
          Gap(height: AppSize.width(value: 16)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ShowChad(
                iconPath: AssetsIconsPath.instance.groth,
                text1: "PROFILE",
                text2: "BOOSTS",
                text3: "BUNDLES",
                onTap: () {},
              ),
              ShowChad(
                iconPath: AssetsIconsPath.instance.ap,
                text1: "GET MORE",
                text2: "AURA",
                text3: "POINTS",
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ShowChad extends StatelessWidget {
  final String? iconPath;
  final String? text1;
  final String? text2;
  final String? text3;
  final String? btnText;
  final Function()? onTap;
  const ShowChad({
    super.key,
    this.iconPath,
    this.text1,
    this.text2,
    this.text3,
    this.btnText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.instance.blue),
        borderRadius: BorderRadius.circular(16),
        color: AppColors.instance.black.withValues(alpha: 0.7),
      ),
      child: Column(
        spacing: AppSize.size.height * 0.005,
        children: [
          AppImage(
            path: iconPath ?? AssetsIconsPath.instance.ice,
            width: AppSize.width(value: 36),
          ),
          AppText(
            data: text1 ?? "ICE",
            fontSize: AppSize.width(value: 22),
            color: AppColors.instance.white,
          ),
          AppText(
            data: text2 ?? "BREAKERS",
            fontSize: AppSize.width(value: 22),
            color: AppColors.instance.white,
          ),
          AppText(
            data: text3 ?? "GAMES",
            fontSize: AppSize.width(value: 20),
            color: Colors.blueAccent,
          ),
          AppButton(
            onTap: onTap,
            width: AppSize.width(value: 88),
            height: AppSize.width(value: 28),
            title: "SHOP NOW",
            filColor: AppColors.instance.blue,
            borderRadius: BorderRadius.circular(30),
          ),
        ],
      ),
    );
  }
}
