import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';

class GiftScreen extends StatelessWidget {
  const GiftScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: Column(
        children: [
          CustomAppBar(
            isDividerShow: false,
            logoUnderText: "",
            title: "",
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSize.width(value: 16)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.size.width * 0.2,
                  ),
                  child: AppText(
                    textAlign: TextAlign.center,
                    data:
                        "ENHANCE YOUR AURA BY PURCHASING, BUNDLE, INCALL GAMES, AND MORE)",
                    fontSize: AppSize.width(value: 18),
                    color: AppColors.instance.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
