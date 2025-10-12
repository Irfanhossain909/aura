import 'package:aura/const/app_colors.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';

class AuraButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? text;
  final Color? filColor;
  final Color? textColor;
  final double? fontSize;
  final double? borderRadius;
  final double? weidth;
  final double? height;
  const AuraButton({
    super.key,
    this.onTap,
    this.text,
    this.filColor,
    this.textColor,
    this.fontSize,
    this.weidth,
    this.height,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: weidth,
        height: height,
        padding: EdgeInsets.symmetric(
          horizontal: AppSize.width(value: 12),
          vertical: AppSize.width(value: 8),
        ),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.instance.white),
          borderRadius: BorderRadius.circular(borderRadius ?? 20),
          color: filColor ?? Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withValues(alpha: 0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 0), // This makes shadow equal on all sides
            ),
          ],
        ),
        child: Center(
          child: AppText(
            data: text ?? "Not Text",
            fontSize: fontSize ?? AppSize.width(value: 18),
            color: textColor ?? AppColors.instance.black,
          ),
        ),
      ),
    );
  }
}
