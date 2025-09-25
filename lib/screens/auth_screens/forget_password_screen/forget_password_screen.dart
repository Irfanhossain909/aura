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

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImageForAuth(
      body: Column(
        children: [
          CustomAppBarAuth(logoUnderText: "VERIFY", progressValue: 3),
          Gap(height: AppSize.size.height * 0.22),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              spacing: AppSize.size.height * 0.02,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                  textAlign: TextAlign.center,
                  data: "FORGET PASSWORD",
                  fontSize: AppSize.width(value: 24),
                  color: AppColors.instance.white,
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 20),
                //   child: AppText(
                //     textAlign: TextAlign.center,
                //     data: "ENTER THE VERIFICATION CODE SENT TO YOUR EMAIL",
                //     fontSize: AppSize.width(value: 18),
                //     color: AppColors.instance.white.withValues(alpha: 0.5),
                //   ),
                // ),
                AppInputWidgetTwo(
                  // height: AppSize.width(value: 36),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: AppSize.width(value: 12),
                  ),
                  fillColor: Colors.transparent,
                  hintText: "Enter Tour Email",
                ),

                // Continue button
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(value: 20),
                  ),
                  child: AuraButton(
                    onTap: () {
                      Get.toNamed(AppRoutes.instance.resetingPasswordScreen);
                    },
                    filColor: AppColors.instance.blue,
                    textColor: AppColors.instance.white,
                    text: "SEND CODE",
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 20),
                //   child: RichText(
                //     textAlign: TextAlign.center,
                //     text: TextSpan(
                //       style: TextStyle(
                //         fontSize: AppSize.width(value: 16),
                //         color: AppColors.instance.white.withValues(alpha: 0.5),
                //       ),
                //       children: [
                //         const TextSpan(
                //           text: "Didn’t receive the code? click here to ",
                //         ),
                //         TextSpan(
                //           text: "resend",
                //           style: TextStyle(color: AppColors.instance.blue),
                //         ),
                //         const TextSpan(text: " email "),
                //       ],
                //     ),
                //   ),
                // ),
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
