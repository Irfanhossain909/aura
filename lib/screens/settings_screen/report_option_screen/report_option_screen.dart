import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/screens/settings_screen/report_option_screen/controller/report_option_controller.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_button/app_button.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportOptionScreen extends StatelessWidget {
  const ReportOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: GetBuilder<ReportOptionController>(
        init: ReportOptionController(),
        builder: (controller) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppImage(
                    path: AssetsIconsPath.instance.warningIc,
                    width: AppSize.width(value: 28),
                    iconColor: AppColors.instance.red1,
                  ),
                  Gap(height: AppSize.size.height * 0.05),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSize.size.width * 0.34,
                    ),
                    child: AppButton(
                      onTap: () {
                        Get.back();
                      },
                      filColor: AppColors.instance.black,
                      height: AppSize.width(value: 34),
                      borderRadius: BorderRadius.circular(16),
                      title: "CANCEL",
                    ),
                  ),
                  Gap(height: AppSize.size.height * 0.05),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSize.width(value: 30),
                      vertical: AppSize.width(value: 24),
                    ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.instance.black,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue,
                          blurRadius: 5,
                          spreadRadius: 0.5,
                          offset: Offset(
                            0,
                            0,
                          ), // (0,0) দিলে সব দিকেই সমান শেডো হবে
                        ),
                      ],
                    ),
                    child: Column(
                      spacing: AppSize.size.height * 0.01,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AppText(
                          data: "REPORT AN ISSUE",
                          fontSize: AppSize.width(value: 30),
                          color: AppColors.instance.blue,
                        ),
                        AppText(
                          textAlign: TextAlign.center,
                          data:
                              "Let us know if you encountered a problem or had a concerning experience.  ",
                          fontSize: AppSize.width(value: 16),
                          color: AppColors.instance.white,
                        ),

                        Container(
                          width: 200,
                          height: 4,
                          decoration: BoxDecoration(
                            color: AppColors.instance.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            spacing: AppSize.size.height * 0.015,
                            children: controller.educationLevelOptions.map((
                              educationLevel,
                            ) {
                              return RowItemWithRadio(
                                text: educationLevel,
                                isChecked: controller.isSelected(
                                  educationLevel,
                                ),
                                onTap: () => controller.selectEducationLevel(
                                  educationLevel,
                                ),
                                onRadioChanged: (value) => controller
                                    .selectEducationLevel(educationLevel),
                              );
                            }).toList(),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSize.width(value: 80),
                          ),
                          child: AppButton(
                            height: 38,
                            borderRadius: BorderRadius.circular(16),
                            title: "NEXT",
                            filColor: AppColors.instance.blue,
                          ),
                        ),
                      ],
                    ),
                  ), // ReportIssueDialog(controller: controller),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class RowItemWithRadio extends StatelessWidget {
  final VoidCallback? onTap;
  final String? text;
  final bool isChecked;
  final ValueChanged<bool?>? onRadioChanged;

  const RowItemWithRadio({
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
            children: [
              Expanded(
                flex: 1,
                child: Radio<bool>(
                  value: true,
                  groupValue: isChecked,
                  onChanged: (bool? value) {
                    if (onRadioChanged != null) {
                      onRadioChanged!(value);
                    }
                  },
                  activeColor: AppColors.instance.blue,
                  fillColor: MaterialStateProperty.resolveWith<Color>((
                    Set<MaterialState> states,
                  ) {
                    if (states.contains(MaterialState.selected)) {
                      return AppColors.instance.blue;
                    }
                    return AppColors.instance.white;
                  }),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: VisualDensity.compact,
                ),
              ),
              Gap(width: 12),
              Expanded(
                flex: 9,
                child: AppText(
                  maxLines: 2,
                  data: text ?? "NO TEXT",
                  fontSize: AppSize.width(value: 18),
                  color: AppColors.instance.white,

                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
