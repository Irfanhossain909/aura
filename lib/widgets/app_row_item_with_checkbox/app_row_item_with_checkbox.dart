
import 'package:aura/const/app_colors.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';

class RowItemWithDividerWithCheckBox extends StatelessWidget {
  final VoidCallback? onTap;
  final String? text;
  final bool isChecked;
  final ValueChanged<bool?>? onCheckboxChanged;

  const RowItemWithDividerWithCheckBox({
    super.key,
    this.onTap,
    this.text,
    this.isChecked = false,
    this.onCheckboxChanged,
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
              AppText(
                data: text ?? "No Text",
                fontSize: AppSize.width(value: 22),
                color: AppColors.instance.white,
              ),

              Checkbox(
                value: isChecked,
                onChanged: onCheckboxChanged,
                activeColor: AppColors.instance.blue,
                checkColor: AppColors.instance.white,
                side: BorderSide(color: AppColors.instance.white),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity: VisualDensity.compact,
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