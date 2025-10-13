import 'package:aura/const/app_colors.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlanSelectionCard extends StatelessWidget {
  final String title;
  final String period;
  final String price;
  final String? saveText;
  final bool isSelected;
  final VoidCallback onTap;

  const PlanSelectionCard({
    super.key,
    required this.title,
    required this.period,
    required this.price,
    this.saveText,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSize.width(value: 12),
          vertical: AppSize.width(value: 6),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.instance.black500,
          border: Border.all(
            color: isSelected
                ? AppColors.instance.blue
                : AppColors.instance.greyMedium,
            width: 2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  data: title,
                  fontSize: AppSize.width(value: 14),
                  fontWeight: FontWeight.w600,
                  color: AppColors.instance.white,
                ),
                AppText(
                  data: period,
                  style: GoogleFonts.poppins(
                    fontSize: AppSize.width(value: 12),
                    color: AppColors.instance.white,
                  ),
                ),
              ],
            ),
            Container(
              width: AppSize.width(value: 52),
              height: AppSize.width(value: 24),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.instance.blue,
              ),
              child: Center(
                child: AppText(
                  data: price,
                  fontSize: AppSize.width(value: 14),
                  fontWeight: FontWeight.w600,
                  color: AppColors.instance.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
