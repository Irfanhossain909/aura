import 'package:aura/screens/extentions_screens/education_level_screen/controller/education_level_controller.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/app_row_item_with_checkbox/app_row_item_with_radio.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class EducationLevelScreen extends StatelessWidget {
  const EducationLevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: GetBuilder<EducationLevelController>(
        init: EducationLevelController(),
        builder: (controller) {
          return Column(
            children: [
              CustomAppBar(
                action: SizedBox(),
                logoUnderText: "EDUCATION LEVEL",
                title: "EDUCATION LEVEL",
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  spacing: AppSize.size.height * 0.015,
                  children: controller.educationLevelOptions.map((
                    educationLevel,
                  ) {
                    return RowItemWithDividerWithRadio(
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
            ],
          );
        },
      ),
    );
  }
}
