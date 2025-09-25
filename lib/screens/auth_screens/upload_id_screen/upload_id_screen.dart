import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/routes/app_routes.dart';
import 'package:aura/screens/auth_screens/id_type_select_screen/id_type_select_screen.dart';
import 'package:aura/screens/auth_screens/upload_id_screen/controller/upload_id_controller.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appbar_auth.dart';
import 'package:aura/widgets/app_button/aura_button.dart';
import 'package:aura/widgets/app_images/app_image_circular.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image_for_auth.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UploadIdScreen extends StatelessWidget {
  const UploadIdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImageForAuth(
      body: GetBuilder<UploadIdController>(
        init: UploadIdController(),
        builder: (controller) {
          return Column(
            spacing: AppSize.size.height * 0.01,
            children: [
              CustomAppBarAuth(logoUnderText: "SIGNUP", progressValue: 5),
              Gap(height: AppSize.size.height * 0.02),
              AppText(
                data: "VERIFY ID",
                fontSize: AppSize.width(value: 24),
                color: AppColors.instance.white,
              ),
              Gap(height: AppSize.size.height * 0.15),
              // AppImageCircular(
              //   path: AssetsIconsPath.instance.idImg,
              //   width: 100,
              //   height: 100,
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Column(
                  spacing: AppSize.size.height * 0.01,
                  children: controller.educationLevelOptions.map((
                    educationLevel,
                  ) {
                    return RowItemContainer(
                      text: educationLevel,
                      isChecked: controller.isSelected(educationLevel),
                      onTap: () =>
                          controller.selectEducationLevel(educationLevel),
                      onRadioChanged: (value) =>
                          controller.selectEducationLevel(educationLevel),
                    );
                  }).toList(),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSize.width(value: 120),
                  vertical: AppSize.width(value: 12),
                ),
                child: AuraButton(
                  onTap: () {
                    Get.toNamed(AppRoutes.instance.userWaitingScreen);
                  },
                  filColor: AppColors.instance.blue,
                  textColor: AppColors.instance.white,
                  text: "CONFIRM",
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSize.width(value: 150),
                ),
                child: AuraButton(
                  onTap: () {
                    Get.back();
                  },
                  height: 28,
                  fontSize: 12,
                  text: "Back",
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
