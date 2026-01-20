import 'package:aura/const/app_colors.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureItemWidget extends StatelessWidget {
  final String text;

  const FeatureItemWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.width(value: 165),
      height: AppSize.width(value: 28),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.instance.white.withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: Center(
        child: AppText(
          data: text,
          textAlign: TextAlign.center,
          style: GoogleFonts.roboto(
            fontSize: AppSize.width(value: 10),
            color: AppColors.instance.white,
          ),
        ),
      ),
    );
  }
}
