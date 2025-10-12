import 'package:aura/const/app_colors.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';

class ProfileImgButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final double? fontSize;

  const ProfileImgButton({
    super.key,
    required this.text,
    this.isSelected = false,
    this.onTap,
    this.width,
    this.height,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? AppSize.size.width * 0.6,
        height: height ?? AppSize.size.height * 0.06,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.instance.blue : Colors.transparent,
          border: Border.all(
            color: isSelected
                ? AppColors.instance.white
                : AppColors.instance.grey,
            width: 1.4,
          ),
          borderRadius: BorderRadius.circular(224),
        ),
        child: Center(
          child: AppText(
            data: text,
            fontSize: fontSize ?? AppSize.width(value: 20),
            color: AppColors.instance.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
