import 'package:aura/const/app_colors.dart';
import 'package:aura/routes/app_routes.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appbar_auth.dart';
import 'package:aura/widgets/app_button/aura_button.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image_for_auth.dart';
import 'package:aura/widgets/input_text/app_input_widget_two.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnterPhoneScreen extends StatelessWidget {
  const EnterPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImageForAuth(
      body: Column(
        children: [
          CustomAppBarAuth(logoUnderText: "VERIFY", progressValue: 7),
          Gap(height: AppSize.size.height * 0.17),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              spacing: AppSize.size.height * 0.02,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: AppText(
                    textAlign: TextAlign.center,
                    data: "Let’s verify your phone number",
                    fontSize: AppSize.width(value: 24),
                    color: AppColors.instance.white,
                  ),
                ),
                AppInputWidgetTwo(
                  // height: AppSize.width(value: 36),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: AppSize.width(value: 16),
                  ),
                  fillColor: Colors.transparent,
                  hintText: "Enter your phone number",
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: AppText(
                    textAlign: TextAlign.center,
                    data:
                        "we will send a text to your phone to verify your number. Please make sure it’s correct. message and data rates may apply",
                    fontSize: AppSize.width(value: 18),
                    color: AppColors.instance.white,
                  ),
                ),

                // Continue button
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(value: 40),
                  ),
                  child: AuraButton(
                    onTap: () {
                      Get.toNamed(AppRoutes.instance.verifyPhoneScreen);
                    },
                    filColor: AppColors.instance.blue,
                    textColor: AppColors.instance.white,
                    text: "CONFIRM",
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(value: 90),
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

                // Back button
              ],
            ),
          ),
        ],
      ),
    );
  }
}
