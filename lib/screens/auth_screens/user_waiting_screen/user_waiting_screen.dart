import 'package:aura/const/app_colors.dart';
import 'package:aura/screens/auth_screens/select_profile_img/controller/upload_id_controller.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appbar_auth.dart';
import 'package:aura/widgets/app_button/aura_button.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image_for_auth.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

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
              CustomAppBarAuth(logoUnderText: "SIGNUP", progressValue: 1),
              Gap(height: AppSize.size.height * 0.14),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: AppText(
                  textAlign: TextAlign.center,
                  data: "CONTINUE WHILE WE VERIFY YOUR ID",
                  fontSize: AppSize.width(value: 30),
                  color: AppColors.instance.white,
                ),
              ),
              Gap(height: AppSize.size.height * 0.02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.instance.black.withValues(alpha: 0.5),
                    border: Border.all(
                      color: AppColors.instance.white,
                      width: 0.5,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.instance.blue.withValues(alpha: 0.3),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: AppText(
                    data:
                        "Your I.D should take about 5 minutes to get verified until then please continue to set up your account.",
                    color: AppColors.instance.white,
                    height: 1.4,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSize.width(value: 120),
                  vertical: AppSize.width(value: 12),
                ),
                child: AuraButton(
                  filColor: AppColors.instance.blue,
                  textColor: AppColors.instance.white,
                  text: "CONFIRM",
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSize.width(value: 150),
                ),
                child: AuraButton(text: "Back"),
              ),
            ],
          );
        },
      ),
    );
  }
}
