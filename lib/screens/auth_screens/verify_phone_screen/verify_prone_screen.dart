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
import 'package:google_fonts/google_fonts.dart';

class VerifyProneScreen extends StatelessWidget {
  const VerifyProneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImageForAuth(
      body: Column(
        children: [
          CustomAppBarAuth(logoUnderText: "VERIFY", progressValue: 3),
          AppText(
            textAlign: TextAlign.center,
            data: "VERIFICATION CODE",
            fontSize: AppSize.width(value: 36),
            color: AppColors.instance.white,
          ),
          Gap(height: AppSize.size.height * 0.13),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              spacing: AppSize.size.height * 0.02,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: AppText(
                    style: GoogleFonts.poppins(
                      fontSize: AppSize.width(value: 16),
                      color: AppColors.instance.white,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                    data: "Enter the verification code sent to your Phone",
                  ),
                ),
                AppText(
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: AppColors.instance.white,
                    fontWeight: FontWeight.w600,
                  ),
                  data: "We've Sent a Code to 6984554846",
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: AppInputWidgetTwo(
                    height: AppSize.width(value: 56),
                    fillColor: Colors.transparent,
                    hintText: "Enter Code",
                  ),
                ),

                // Continue button
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(value: 16),
                  ),
                  child: AuraButton(
                    height: 44,
                    borderRadius: 12,
                    onTap: () {
                      Get.toNamed(AppRoutes.instance.idTypeSelectScreen);
                    },
                    filColor: AppColors.instance.blue,
                    textColor: AppColors.instance.white,
                    text: "SUBMIT",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.poppins(
                        fontSize: AppSize.width(value: 12),
                        color: AppColors.instance.white.withValues(alpha: 0.5),
                      ),
                      children: [
                        const TextSpan(
                          text: "Didn’t receive the code? click here to ",
                        ),
                        TextSpan(
                          text: "resend",
                          style: TextStyle(color: AppColors.instance.blue),
                        ),
                        const TextSpan(text: " phone "),
                      ],
                    ),
                  ),
                ),
                Gap(height: AppSize.size.height * 0.2),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(value: 90),
                  ),
                  child: AuraButton(
                    onTap: () {
                      Get.back();
                    },
                    weidth: 60,
                    height: 32,
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
