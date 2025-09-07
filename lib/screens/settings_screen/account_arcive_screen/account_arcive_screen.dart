import 'package:aura/const/app_colors.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_button/app_button.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image_for_auth.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';

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
          Gap(height: AppSize.size.height * 0.27),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.instance.white,
            ),
            padding: EdgeInsets.all(20),
            width: AppSize.size.width * 0.7,
            child: Column(
              spacing: AppSize.size.height * 0.01,
              children: [
                AppText(
                  data: "ARCHIVE YOUR ACCOUNT",
                  fontSize: AppSize.width(value: 24),
                  fontWeight: FontWeight.w600,
                  color: AppColors.instance.black,
                ),
                AppText(
                  height: 1.5,
                  textAlign: TextAlign.center,
                  data:
                      """once you archive your account, all information and data will be temporarily remove you from the us. Please make sure this is what you want to do before processed""",
                  fontSize: AppSize.width(value: 12),
                  fontWeight: FontWeight.w400,
                  color: AppColors.instance.black,
                ),
                AppButton(
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
