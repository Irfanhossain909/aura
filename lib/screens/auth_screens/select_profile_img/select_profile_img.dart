import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/routes/app_routes.dart';
import 'package:aura/screens/auth_screens/select_profile_img/controller/upload_id_controller.dart';
import 'package:aura/screens/auth_screens/select_profile_img/widget/profile_img_button.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appbar_auth.dart';
import 'package:aura/widgets/app_button/aura_button.dart';
import 'package:aura/widgets/app_images/app_image_circular.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image_for_auth.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectProfileImg extends StatelessWidget {
  const SelectProfileImg({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImageForAuth(
      body: GetBuilder<SelectProfileImgController>(
        init: SelectProfileImgController(),
        builder: (controller) {
          return Column(
            spacing: AppSize.size.height * 0.01,
            children: [
              CustomAppBarAuth(logoUnderText: "SIGNUP", progressValue: 8),
              AppText(
                data: "CHOOSE PROFILE PICTURE",
                fontSize: AppSize.width(value: 32),
                color: AppColors.instance.white,
              ),
              Gap(height: AppSize.size.height * 0.05),
              AppImageCircular(
                path: AssetsIconsPath.instance.emptyImg,
                width: 100,
                height: 100,
              ),
              Gap(height: AppSize.size.height * 0.05),
              Column(
                spacing: AppSize.size.height * 0.02,
                children: controller.educationLevelOptions.map((uploadOption) {
                  return ProfileImgButton(
                    width: AppSize.width(value: 300),
                    height: AppSize.height(value: 44),
                    text: uploadOption,
                    isSelected: controller.isSelected(uploadOption),
                    onTap: () => controller.selectEducationLevel(uploadOption),
                  );
                }).toList(),
              ),
              Gap(height: AppSize.size.height * 0.18),

              AuraButton(
                height: AppSize.width(value: 42),
                weidth: AppSize.width(value: 117),
                borderRadius: 30,
                onTap: () {
                  Get.toNamed(AppRoutes.instance.communityExpectionScreen);
                },
                filColor: AppColors.instance.blue,
                textColor: AppColors.instance.white,
                text: "CONFIRM",
              ),
              Gap(height: AppSize.size.height * 0.001),
              AuraButton(
                onTap: () {
                  Get.back();
                },
                weidth: AppSize.width(value: 60),
                height: AppSize.width(value: 32),
                borderRadius: 30,
                fontSize: 12,
                text: "Back",
              ),
            ],
          );
        },
      ),
    );
  }
}
