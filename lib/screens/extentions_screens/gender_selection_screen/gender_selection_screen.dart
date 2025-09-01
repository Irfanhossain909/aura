import 'package:aura/screens/extentions_screens/gender_selection_screen/controller/gender_selection_controller.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/app_row_item_with_checkbox/app_row_item_with_radio.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class GenderSelectionScreen extends StatelessWidget {
  const GenderSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: GetBuilder<GenderSelectionController>(
        init: GenderSelectionController(),
        builder: (controller) {
          return Column(
            children: [
              CustomAppBar(
                action: SizedBox(),
                logoUnderText: "GENDER",
                title: "GENDER",
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  spacing: AppSize.size.height * 0.015,
                  children: controller.genderOptions.map((gender) {
                    return RowItemWithDividerWithRadio(
                      text: gender,
                      isChecked: controller.isSelected(gender),
                      onTap: () => controller.selectGender(gender),
                      onRadioChanged: (value) =>
                          controller.selectGender(gender),
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
