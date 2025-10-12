import 'package:aura/const/app_colors.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_button/app_button.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image_for_auth.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountArciveScreen extends StatelessWidget {
  const AccountArciveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImageForAuth(
      body: Column(
        children: [
          CustomAppBar(
            action: SizedBox(),
            isDividerShow: false,
            logoUnderText: "",
            title: "",
          ),
          Gap(height: AppSize.size.height * 0.22),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppColors.instance.white),
            ),
            padding: EdgeInsets.all(20),
            width: AppSize.size.width * 0.8,
            child: Column(
              spacing: AppSize.size.height * 0.016,
              children: [
                AppText(
                  data: "ARCHIVE YOUR ACCOUNT",
                  fontSize: AppSize.width(value: 24),
                  fontWeight: FontWeight.w600,
                  color: AppColors.instance.white,
                ),
                AppText(
                  height: 1.5,
                  textAlign: TextAlign.center,
                  data:
                      """once you archive your account, all information and data will be temporarily remove you from the us. Please make sure this is what you want to do before processed""",
                  style: GoogleFonts.poppins(
                    fontSize: AppSize.width(value: 12),
                    fontWeight: FontWeight.w400,
                    color: AppColors.instance.white,
                  ),
                ),
                AppButton(
                  onTap: () {
                    Get.close(2);
                  },
                  width: AppSize.size.width * 0.4,
                  borderRadius: BorderRadius.circular(16),
                  height: AppSize.width(value: 36),
                  title: "CONFIRM ARCHIVE",
                  filColor: AppColors.instance.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
