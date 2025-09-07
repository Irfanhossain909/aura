import 'package:aura/const/app_colors.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_button/app_button.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image_for_auth.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';

class DeleteAndArciveScreen extends StatelessWidget {
  const DeleteAndArciveScreen({super.key});

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
          Gap(height: AppSize.size.height * 0.24),
          AppText(
            data: "DELETE YOUR ACCOUNT",
            fontSize: AppSize.width(value: 40),
            color: AppColors.instance.white,
          ),
          Gap(height: AppSize.size.height * 0.01),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSize.width(value: 30)),
            child: AppText(
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w400,
              height: 1.4,
              data:
                  "Deleting your account is parmanent and will remove all your data from Aura. This action cannot be undone",
              fontSize: AppSize.width(value: 16),
              color: AppColors.instance.white.withValues(alpha: 0.7),
            ),
          ),
          Gap(height: AppSize.size.height * 0.04),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSize.width(value: 110),
            ),
            child: AppButton(
              borderRadius: BorderRadius.circular(16),
              height: AppSize.width(value: 36),
              title: "DELETE ACCOUNT",
              filColor: AppColors.instance.red1,
            ),
          ),
          Gap(height: AppSize.size.height * 0.02),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSize.width(value: 110),
            ),
            child: AppButton(
              borderRadius: BorderRadius.circular(16),
              height: AppSize.width(value: 36),
              title: "ARCHIVE ACCOUNT",
              filColor: AppColors.instance.blue,
            ),
          ),
        ],
      ),
    );
  }
}
