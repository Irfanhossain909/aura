import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';

class CustomAppBarAuth extends StatelessWidget {
  final int progressValue;
  final String? logoUnderText;
  final bool isProgressShown;

  const CustomAppBarAuth({
    super.key,
    this.progressValue = 1,
    this.logoUnderText,
    this.isProgressShown = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          // SafeArea section from original custom_appbar.dart
          SafeArea(
            bottom: false,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSize.width(value: 16),
                vertical: AppSize.width(value: 8),
              ),
              child: Row(
                children: [
                  // Leading section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppImage(
                        path: AssetsIconsPath.instance.auraIcon,
                        height: AppSize.width(value: 17),
                      ),
                      const SizedBox(height: 2),
                      AppText(
                        data: logoUnderText ?? "Profile",
                        fontSize: AppSize.width(value: 16),
                        fontWeight: FontWeight.w400,
                        color: AppColors.instance.blue,
                      ),
                    ],
                  ),

                  // Actions section
                ],
              ),
            ),
          ),

          // Progress Container
          isProgressShown
              ? Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: AppSize.width(value: 16),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: AppSize.width(value: 5),
                    decoration: BoxDecoration(
                      color: AppColors.instance.black.withValues(alpha: 0.4),
                    ),
                    child: FractionallySizedBox(
                      alignment: Alignment.centerLeft,
                      widthFactor: progressValue / 10,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.instance.blue,
                        ),
                      ),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
