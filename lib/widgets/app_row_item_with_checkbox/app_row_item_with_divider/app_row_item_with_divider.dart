
import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';

class RowItemWithDivider extends StatelessWidget {
  final VoidCallback? onTap;
  final String? text;
  const RowItemWithDivider({super.key, this.onTap, this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                data: text ?? "No Text",
                fontSize: AppSize.width(value: 22),
                color: AppColors.instance.white,
              ),
              AppImage(
                path: AssetsIconsPath.instance.icArrowRight,
                width: 22,
                height: 22,
              ),
            ],
          ),
          Gap(height: 10),
          Divider(height: 2, color: AppColors.instance.white),
        ],
      ),
    );
  }
}
