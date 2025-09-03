import 'package:aura/const/app_colors.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';

class RowItemWithDividerWithToggle extends StatelessWidget {
  final VoidCallback? onTap;
  final String? text;
  final bool isEnabled;
  final ValueChanged<bool>? onToggleChanged;

  const RowItemWithDividerWithToggle({
    super.key,
    this.onTap,
    this.text,
    this.isEnabled = false,
    this.onToggleChanged,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: AppText(
                  data: text ?? "No Text",
                  fontSize: AppSize.width(value: 22),
                  color: AppColors.instance.white,
                ),
              ),

              Switch(
                value: isEnabled,
                onChanged: onToggleChanged,
                activeColor: AppColors.instance.white,
                activeTrackColor: AppColors.instance.blue,
                inactiveThumbColor: AppColors.instance.white,
                inactiveTrackColor: AppColors.instance.black.withValues(
                  alpha: .7,
                ),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ],
          ),
          Gap(height: AppSize.width(value: 12)),
          Divider(height: 2, color: AppColors.instance.white),
        ],
      ),
    );
  }
}
