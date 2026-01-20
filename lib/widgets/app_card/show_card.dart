import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';

class ShowChad extends StatelessWidget {
  final String? iconPath;
  final String? text1;
  final String? text2;
  final String? text3;
  final String? btnText;
  final Color? icColor;
  final Function()? onTap;
  const ShowChad({
    super.key,
    this.iconPath,
    this.text1,
    this.text2,
    this.text3,
    this.btnText,
    this.onTap,
    this.icColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: AppSize.width(value: 80),
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.instance.blue),
          borderRadius: BorderRadius.circular(16),
          color: AppColors.instance.black.withValues(alpha: 0.7),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: AppSize.size.height * 0.005,
            children: [
              AppImage(
                path: iconPath ?? AssetsIconsPath.instance.ice,
                iconColor: icColor ?? AppColors.instance.white,
                width: AppSize.width(value: 24),
              ),
              if (text1 != null)
                AppText(
                  data: text1 ?? "no text",
                  fontSize: AppSize.width(value: 14),
                  color: AppColors.instance.white,
                ),
              AppText(
                data: text2 ?? "BREAKERS",
                fontSize: AppSize.width(value: 14),
                color: AppColors.instance.white,
              ),
              AppText(
                data: text3 ?? "GAMES",
                fontSize: AppSize.width(value: 12),
                color: Colors.blueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
