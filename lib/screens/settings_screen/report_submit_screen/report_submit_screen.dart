import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_button/app_button.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/input_text/app_input_widget_two.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportSubmitScreen extends StatelessWidget {
  const ReportSubmitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppImage(
                path: AssetsIconsPath.instance.warningIc,
                width: AppSize.width(value: 28),
                iconColor: AppColors.instance.red1,
              ),
              Gap(height: AppSize.size.height * 0.05),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSize.size.width * 0.34,
                ),
                child: AppButton(
                  onTap: () {
                    Get.back();
                  },
                  filColor: AppColors.instance.black,
                  height: AppSize.width(value: 34),
                  borderRadius: BorderRadius.circular(16),
                  title: "CANCEL",
                ),
              ),
              Gap(height: AppSize.size.height * 0.05),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSize.width(value: 50),
                  vertical: AppSize.width(value: 30),
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.instance.black,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue,
                      blurRadius: 5,
                      spreadRadius: 0.5,
                      offset: Offset(0, 0), // (0,0) দিলে সব দিকেই সমান শেডো হবে
                    ),
                  ],
                ),
                child: Column(
                  spacing: AppSize.size.height * 0.02,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppText(
                      data: "REPORT AN ISSUE",
                      fontSize: AppSize.width(value: 30),
                      color: AppColors.instance.blue,
                    ),
                    AppText(
                      textAlign: TextAlign.center,
                      data:
                          "Please describe what happened in as much detail as possible  ",
                      fontSize: AppSize.width(value: 16),
                      color: AppColors.instance.white,
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.instance.white,
                      ),
                      child: Column(
                        children: [
                          AppInputWidgetTwo(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: AppSize.size.height * 0.04,
                            ),
                            style: TextStyle(color: AppColors.instance.black),
                          ),
                          AppText(
                            data: "300 CHARACTERS REMAINING",
                            fontSize: AppSize.width(value: 18),
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSize.width(value: 80),
                      ),
                      child: AppButton(
                        onTap: () {
                          Get.close(2);
                        },
                        height: 38,
                        borderRadius: BorderRadius.circular(16),
                        title: "SUBMIT",
                        filColor: AppColors.instance.blue,
                      ),
                    ),
                  ],
                ),
              ), // ReportIssueDialog(controller: controller),
            ],
          ),
        ),
      ),
    );
  }
}
