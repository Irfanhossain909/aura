import 'package:aura/const/app_colors.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appbar_auth.dart';
import 'package:aura/widgets/app_button/aura_button.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image_for_auth.dart';
import 'package:aura/widgets/input_text/app_input_widget_two.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';

class VerifyProneScreen extends StatelessWidget {
  const VerifyProneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImageForAuth(
      body: Column(
        children: [
          CustomAppBarAuth(logoUnderText: "PHONE", progressValue: 1),
          Gap(height: AppSize.size.height * 0.14),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              spacing: AppSize.size.height * 0.02,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 90),
                  child: AppText(
                    textAlign: TextAlign.center,
                    data: "LET'S VERIFY YOUR NUMBER",
                    fontSize: AppSize.width(value: 24),
                    color: AppColors.instance.white,
                  ),
                ),
                AppInputWidgetTwo(
                  // height: AppSize.width(value: 36),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: AppSize.width(value: 12),
                  ),
                  fillColor: Colors.transparent,
                  hintText: "Enter Your Phone Number",
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: AppText(
                    textAlign: TextAlign.center,
                    data:
                        "WE WILL SEND A TEXT TO YOUR PHONE TO VERIFY YOUR NUMBER. PLEASE MAKE SURE IT’S CORRECT. MESSAGE AND DATA RATES MAY APPLY.",
                    fontSize: AppSize.width(value: 18),
                    color: AppColors.instance.white,
                  ),
                ),

                // Continue button
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(value: 60),
                  ),
                  child: AuraButton(
                    filColor: AppColors.instance.blue,
                    textColor: AppColors.instance.white,
                    text: "CONFIRM",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(value: 90),
                  ),
                  child: AuraButton(text: "Back"),
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
