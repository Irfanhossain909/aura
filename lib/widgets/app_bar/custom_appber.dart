import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class CustomAppBar extends StatelessWidget {
  final Widget? action;
  final String? logoUnderText;
  final String? title;
  const CustomAppBar({super.key, this.action, this.logoUnderText, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          // First AppBar section
          SafeArea(
            bottom: false,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSize.width(value: 16),
                vertical: AppSize.width(value: 8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  action ??
                      AppImage(
                        path: AssetsIconsPath.instance.icSetting,
                        width: AppSize.width(value: 24),
                        height: AppSize.width(value: 24),
                      ),
                ],
              ),
            ),
          ),

          // Second AppBar section
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSize.width(value: 16),
              vertical: AppSize.width(value: 8),
            ),
            child: Row(
              children: [
                // Back button
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: AppColors.instance.white,
                    size: AppSize.width(value: 24),
                  ),
                ),

                // Title
                Expanded(
                  child: Center(
                    child: AppText(
                      data: title ?? "MEMBER PREFERENCE",
                      fontSize: AppSize.width(value: 24.0),
                      fontWeight: FontWeight.w400,
                      color: AppColors.instance.blue,
                    ),
                  ),
                ),

                // Invisible spacer to balance the back button
                SizedBox(width: AppSize.width(value: 24)),
              ],
            ),
          ),
          Divider(color: AppColors.instance.white),
        ],
      ),
    );
  }
}
