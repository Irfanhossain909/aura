import 'package:aura/const/app_colors.dart';
import 'package:aura/routes/app_routes.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_button/app_button.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/app_row_item_with_checkbox/app_row_item_with_divider/app_row_item_with_divider.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PrefrenceScreen extends StatelessWidget {
  const PrefrenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      gradient: const LinearGradient(
        begin: Alignment(0.00, 0.00),
        end: Alignment(0.89, 1.00),
        colors: [Color(0xFF6D8590), Color(0xFF2D373E)],
      ),
      body: Column(
        children: [
          CustomAppBar(
            isDividerShow: false,
            action: SizedBox(),
            title: "SEFTY",
            logoUnderText: "PROFILE",
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    RowItemWithDivider(
                      onTap: () {
                        Get.toNamed(AppRoutes.instance.contactListScreen);
                      },
                      text: "BLOCKED LIST",
                      isDividerShow: false,
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    RowItemWithDivider(
                      onTap: () {
                        Get.toNamed(
                          AppRoutes.instance.communityGuideLineScreen,
                        );
                      },
                      text: "COMMUNITY GUIDELINES",
                      isDividerShow: false,
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    Container(
                      width: double.infinity,
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: AppColors.instance.hexzaGreen,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppSize.size.height * 0.01,
                      ),
                      child: AppText(
                        data: "PHONE & EMAIL",
                        fontSize: AppSize.width(value: 24),
                        color: AppColors.instance.white,
                      ),
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: AppSize.width(value: 12),
                      children: [
                        AppText(
                          data: "(###) ###-###",
                          fontSize: AppSize.width(value: 20),
                          fontWeight: FontWeight.w500,
                          color: AppColors.instance.white,
                        ),
                        AppText(
                          data: "EDIT",
                          fontSize: AppSize.width(value: 16),
                          fontWeight: FontWeight.w400,
                          color: AppColors.instance.blue,
                        ),
                      ],
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: AppSize.width(value: 12),
                      children: [
                        AppText(
                          data: "test@email.com",
                          fontSize: AppSize.width(value: 20),
                          fontWeight: FontWeight.w500,
                          color: AppColors.instance.white,
                        ),
                        AppText(
                          data: "EDIT",
                          fontSize: AppSize.width(value: 16),
                          fontWeight: FontWeight.w400,
                          color: AppColors.instance.blue,
                        ),
                      ],
                    ),

                    SizedBox(height: AppSize.size.height * 0.01),
                    Container(
                      width: double.infinity,
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: AppColors.instance.hexzaGreen,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppSize.size.height * 0.01,
                      ),
                      child: AppText(
                        data: "SUBSCRIPTION",
                        fontSize: AppSize.width(value: 24),
                        color: AppColors.instance.white,
                      ),
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    RowItemWithDivider(
                      onTap: () {
                        Get.toNamed(AppRoutes.instance.unlockAuraScreen);
                      },
                      text: "GET AURA +",
                      isDividerShow: false,
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    RowItemWithDivider(
                      onTap: () {
                        Get.toNamed(AppRoutes.instance.unlockAuraScreen);
                      },
                      text: "RESTORE AURA +",
                      isDividerShow: false,
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    RowItemWithDivider(
                      text: "CANCEL AURA +",
                      isDividerShow: false,
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    Container(
                      width: double.infinity,
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: AppColors.instance.hexzaGreen,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppSize.size.height * 0.01,
                      ),
                      child: AppText(
                        data: "NOTIFICATION",
                        fontSize: AppSize.width(value: 24),
                        color: AppColors.instance.white,
                      ),
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    RowItemWithDivider(
                      onTap: () {
                        Get.toNamed(AppRoutes.instance.pushNotificationScreen);
                      },
                      text: "PUSH NOTIFICATION",
                      isDividerShow: false,
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    RowItemWithDivider(
                      onTap: () {
                        Get.toNamed(AppRoutes.instance.emailNotificationScreen);
                      },
                      text: "E-MAIL",
                      isDividerShow: false,
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    Container(
                      width: double.infinity,
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: AppColors.instance.hexzaGreen,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppSize.size.height * 0.01,
                      ),
                      child: AppText(
                        data: "LANGUAGE & REGION",
                        fontSize: AppSize.width(value: 24),
                        color: AppColors.instance.white,
                      ),
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: AppSize.width(value: 12),
                      children: [
                        AppText(
                          data: "LANGUAGE",
                          style: GoogleFonts.poppins(
                            fontSize: AppSize.width(value: 16),
                            fontWeight: FontWeight.w500,
                            color: AppColors.instance.white,
                          ),
                        ),
                        AppText(
                          data: "EDIT",
                          fontSize: AppSize.width(value: 16),
                          fontWeight: FontWeight.w400,
                          color: AppColors.instance.blue,
                        ),
                      ],
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: AppSize.width(value: 12),
                      children: [
                        AppText(
                          data: "MEASUREMENT UNIT",
                          style: GoogleFonts.poppins(
                            fontSize: AppSize.width(value: 16),
                            fontWeight: FontWeight.w500,
                            color: AppColors.instance.white,
                          ),
                        ),
                        AppText(
                          data: "EDIT",
                          fontSize: AppSize.width(value: 16),
                          fontWeight: FontWeight.w400,
                          color: AppColors.instance.blue,
                        ),
                      ],
                    ),

                    SizedBox(height: AppSize.size.height * 0.01),
                    Container(
                      width: double.infinity,
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: AppColors.instance.hexzaGreen,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppSize.size.height * 0.01,
                      ),
                      child: AppText(
                        data: "LEGAL",
                        fontSize: AppSize.width(value: 24),
                        color: AppColors.instance.white,
                      ),
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    RowItemWithDivider(
                      text: "PRIVACY POLICY",
                      isDividerShow: false,
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    RowItemWithDivider(
                      text: "TERMS OF SERVICE",
                      isDividerShow: false,
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    RowItemWithDivider(
                      text: "YOUR PRIVACY CHOICES",
                      isDividerShow: false,
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    RowItemWithDivider(
                      text: "DOWNLOAD MY DATA",
                      isDividerShow: false,
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    Container(
                      width: double.infinity,
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: AppColors.instance.hexzaGreen,
                      ),
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    Container(
                      width: AppSize.width(value: 160),
                      height: AppSize.width(value: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: AppColors.instance.white),
                      ),
                      child: Center(
                        child: AppText(
                          data: "Logout",
                          fontSize: AppSize.width(value: 20),
                          fontWeight: FontWeight.w500,
                          color: AppColors.instance.white,
                        ),
                      ),
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    InkWell(
                      onTap: () {
                        Get.toNamed(
                          AppRoutes.instance.deleteAndArciveAccountScreen,
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSize.width(value: 20),
                          vertical: AppSize.width(value: 12),
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.instance.red1,
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(color: AppColors.instance.white),
                        ),
                        child: AppText(
                          data: "DELETE ACCOUNT",
                          color: AppColors.instance.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
