import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/routes/app_routes.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/app_button/app_button.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommunityExpectionScreen extends StatelessWidget {
  const CommunityExpectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      gradient: const LinearGradient(
        begin: Alignment(0.00, 0.00),
        end: Alignment(0.89, 1.00),
        colors: [Color(0xFF6D8590), Color(0xFF2D373E)],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSize.width(value: 20)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: AppSize.size.height * 0.005,
              children: [
                AppImage(path: AssetsIconsPath.instance.comCard1),
                AppText(
                  data: "sTRIKE POLICY",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.instance.white,
                ),
                AppImage(path: AssetsIconsPath.instance.comCard2),
                AppImage(path: AssetsIconsPath.instance.comCard3),
                AppImage(path: AssetsIconsPath.instance.comCard4),
                AppImage(path: AssetsIconsPath.instance.comCard5),
                AppText(
                  data: "VIOLATION TIERSs",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.instance.white,
                ),
                AppImage(path: AssetsIconsPath.instance.comCard6),
                AppImage(path: AssetsIconsPath.instance.comCard7),
                AppImage(path: AssetsIconsPath.instance.comCard8),

                Align(
                  alignment: Alignment.center,
                  child: AppButton(
                    onTap: () {
                      Get.toNamed(AppRoutes.instance.profileEditScreen);
                    },
                    title: "ACKNOWLEDGE",
                    width: AppSize.size.width * 0.25,
                    filColor: AppColors.instance.blue,
                    height: AppSize.width(value: 34),
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
