import 'package:aura/const/app_colors.dart';
import 'package:aura/routes/app_routes.dart';
import 'package:aura/screens/auth_screens/id_type_select_screen/controller/id_type_select_controller.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appbar_auth.dart';
import 'package:aura/widgets/app_button/aura_button.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image_for_auth.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class IdTypeSelectScreen extends StatelessWidget {
  const IdTypeSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImageForAuth(
      body: GetBuilder<IdTypeSelectController>(
        init: IdTypeSelectController(),
        builder: (controller) {
          return Column(
            spacing: AppSize.size.height * 0.01,
            children: [
              CustomAppBarAuth(logoUnderText: "SIGNUP", progressValue: 1),
              Gap(height: AppSize.size.height * 0.14),
              AppText(
                data: "SELECT VERIFICATION METHOD",
                fontSize: AppSize.width(value: 24),
                color: AppColors.instance.white,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Column(
                  spacing: AppSize.size.height * 0.01,
                  children: controller.educationLevelOptions.map((
                    educationLevel,
                  ) {
                    return RowItemContainer(
                      text: educationLevel,
                      isChecked: controller.isSelected(educationLevel),
                      onTap: () =>
                          controller.selectEducationLevel(educationLevel),
                      onRadioChanged: (value) =>
                          controller.selectEducationLevel(educationLevel),
                    );
                  }).toList(),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSize.width(value: 120),
                  vertical: AppSize.width(value: 12),
                ),
                child: AuraButton(
                  onTap: () {
                    Get.toNamed(AppRoutes.instance.uploadIdScreen);
                  },
                  filColor: AppColors.instance.blue,
                  textColor: AppColors.instance.white,
                  text: "CONFIRM",
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSize.width(value: 150),
                ),
                child: AuraButton(text: "Back"),
              ),
            ],
          );
        },
      ),
    );
  }
}

class RowItemContainer extends StatelessWidget {
  final VoidCallback? onTap;
  final String? text;
  final bool isChecked;
  final ValueChanged<bool?>? onRadioChanged;

  const RowItemContainer({
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
      child: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: AppColors.instance.grey.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          children: [
            SizedBox(width: AppSize.width(value: 24)),
            Expanded(
              child: Center(
                child: AppText(
                  data: text ?? "No Text",
                  fontSize: AppSize.width(value: 22),
                  color: AppColors.instance.white,
                ),
              ),
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
          ],
        ),
      ),
    );
  }
}
