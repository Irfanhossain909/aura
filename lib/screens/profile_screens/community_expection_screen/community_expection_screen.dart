import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/routes/app_routes.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_button/app_button.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class CommunityExpectionScreen extends StatelessWidget {
  const CommunityExpectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: AppImage(
                  path: AssetsIconsPath.instance.auraIcon,
                  width: AppSize.size.width * 0.2,
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSize.width(value: 20),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    spacing: AppSize.size.height * 0.02,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSize.size.width * 0.2,
                        ),
                        child: AppText(
                          textAlign: TextAlign.center,
                          data: "cOMMUNITY EXPECTATIONs",
                          fontSize: AppSize.width(value: 34),
                          color: AppColors.instance.white,
                        ),
                      ),
                      AppText(
                        textAlign: TextAlign.center,
                        data:
                            "STRIKES ACCUMILATE OVER TIME BUT A STRIKE WILL EXPIRE AFTER 2 MONTHS IF A USER DOES NOT COLLECT ANY NEW STRIKES IN THAT TIME",
                        fontSize: AppSize.width(value: 16),
                        letterSpacing: 0.7,
                        height: 1.4,
                        color: AppColors.instance.white,
                      ),

                      AppImage(path: AssetsIconsPath.instance.comExpectionImg),

                      AppButton(
                        onTap: () {
                          Get.toNamed(AppRoutes.instance.profileEditScreen);
                        },
                        title: "ACKNOWLEDGE",
                        width: AppSize.size.width * 0.25,
                        filColor: AppColors.instance.blue,
                        height: AppSize.width(value: 34),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      Gap(height: AppSize.size.height * 0.1),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
