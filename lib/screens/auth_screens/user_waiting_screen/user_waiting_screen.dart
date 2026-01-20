import 'package:aura/const/app_colors.dart';
import 'package:aura/routes/app_routes.dart';
import 'package:aura/screens/auth_screens/select_profile_img/controller/upload_id_controller.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appbar_auth.dart';
import 'package:aura/widgets/app_button/aura_button.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image_for_auth.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserWaitingScreen extends StatelessWidget {
  const UserWaitingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImageForAuth(
      body: GetBuilder<SelectProfileImgController>(
        init: SelectProfileImgController(),
        builder: (controller) {
          return Column(
            spacing: AppSize.size.height * 0.01,
            children: [
              CustomAppBarAuth(logoUnderText: "SIGNUP", progressValue: 6),
              AppText(
                textAlign: TextAlign.center,
                data: "CONTINUE WHILE WE VERIFY YOUR ID",
                fontSize: AppSize.width(value: 32),
                color: AppColors.instance.white,
              ),
              Gap(height: AppSize.size.height * 0.18),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.instance.black.withValues(alpha: 0.8),
                    border: Border.all(
                      color: AppColors.instance.white,
                      width: 0.5,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.instance.blue.withValues(alpha: 0.6),
                        spreadRadius: 6,
                        blurRadius: 20,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: AppText(
                    textAlign: TextAlign.center,
                    data:
                        "Your I.D should take about 5 minutes to get verified until then please continue to set up your account.",
                    color: AppColors.instance.white.withValues(alpha: 0.8),
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                    letterSpacing: 0.7,
                    height: 1.4,
                  ),
                ),
              ),
              Gap(height: AppSize.size.height * 0.3),
              AuraButton(
                height: AppSize.width(value: 42),
                weidth: AppSize.width(value: 117),
                borderRadius: 30,
                onTap: () {
                  Get.toNamed(AppRoutes.instance.selectProfileImgScreen);
                },
                filColor: AppColors.instance.blue,
                textColor: AppColors.instance.white,
                text: "CONFIRM",
              ),
            ],
          );
        },
      ),
    );
  }
}
