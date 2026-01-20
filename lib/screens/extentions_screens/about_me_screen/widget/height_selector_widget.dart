import 'package:aura/const/app_colors.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeightSelectorWidget extends StatelessWidget {
  final String label;
  final String? selectedValue;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const HeightSelectorWidget({
    super.key,
    required this.label,
    this.selectedValue,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: AppSize.width(value: 16)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: AppText(
                  style: GoogleFonts.poppins(
                    fontSize: AppSize.width(value: 16),
                    color: AppColors.instance.white,
                  ),
                  data: label,
                  fontSize: AppSize.width(value: 20),
                  color: AppColors.instance.white,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColors.instance.white,
                    ),
                    child: Center(
                      child: AppText(
                        data: selectedValue ?? "5'6",
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          color: selectedValue != null
                              ? AppColors.instance.black
                              : AppColors.instance.white.withValues(alpha: .7),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: AppSize.width(value: 8)),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: onIncrement,
                        child: Icon(
                          Icons.keyboard_arrow_up,
                          color: AppColors.instance.white,
                          size: AppSize.width(value: 20),
                        ),
                      ),

                      InkWell(
                        onTap: onDecrement,
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: AppColors.instance.white,
                          size: AppSize.width(value: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(height: 2, color: AppColors.instance.white),
      ],
    );
  }
}
