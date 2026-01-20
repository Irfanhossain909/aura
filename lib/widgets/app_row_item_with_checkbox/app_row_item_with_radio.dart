import 'package:aura/const/app_colors.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';

class RowItemWithDividerWithRadio extends StatelessWidget {
  final VoidCallback? onTap;
  final String? text;
  final bool isChecked;
  final ValueChanged<bool?>? onRadioChanged;

  const RowItemWithDividerWithRadio({
    super.key,
    this.onTap,
    this.text,
    this.isChecked = false,
    this.onRadioChanged,
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

              Radio<bool>(
                value: true,
                groupValue: isChecked,
                onChanged: (bool? value) {
                  if (onRadioChanged != null) {
                    onRadioChanged!(value);
                  }
                },
                activeColor: AppColors.instance.blue,
                fillColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.selected)) {
                      return AppColors.instance.blue;
                    }
                    return AppColors.instance.white;
                  },
                ),
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