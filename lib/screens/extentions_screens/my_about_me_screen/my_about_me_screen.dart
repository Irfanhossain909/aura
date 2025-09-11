import 'package:aura/const/app_colors.dart';
import 'package:aura/routes/app_routes.dart';
import 'package:aura/screens/extentions_screens/my_about_me_screen/controller/my_about_me_controller.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_button/app_button.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/app_row_item_with_checkbox/app_row_item_with_checkbox.dart';
import 'package:aura/widgets/app_row_item_with_checkbox/app_row_item_with_divider/app_row_item_with_divider.dart';
import 'package:aura/widgets/app_row_item_with_checkbox/app_row_item_with_popup.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAboutMeScreen extends StatelessWidget {
  const MyAboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: GetBuilder<MyAboutMeController>(
        init: MyAboutMeController(),
        builder: (controller) {
          return Column(
            children: [
              CustomAppBar(
                action: const SizedBox(),
                logoUnderText: "PREFERENCE",
                title: "ABOUT ME",
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    RowItemWithDividerWithHeightSelector(
                      text: "Height",
                      selectedValue: controller.selectedMinHeight.value.isEmpty
                          ? null
                          : controller.selectedMinHeight.value,
                      heightOptions: controller.heightOptions,
                      onValueChanged: (String value) {
                        controller.selectMinHeight(value);
                      },
                    ),
                    SizedBox(height: AppSize.width(value: 6)),

                    // Drinking
                    RowItemWithDividerWithCheckBox(
                      text: "Drinking",
                      isChecked: controller.isDrinking.value,
                      onCheckboxChanged: (v) =>
                          controller.setDrinking(v ?? false),
                    ),
                    SizedBox(height: AppSize.width(value: 6)),

                    // Marijuana
                    RowItemWithDividerWithCheckBox(
                      text: "Marajuana",
                      isChecked: controller.isMarijuana.value,
                      onCheckboxChanged: (v) =>
                          controller.setMarijuana(v ?? false),
                    ),
                    SizedBox(height: AppSize.width(value: 6)),

                    // Smoking
                    RowItemWithDividerWithCheckBox(
                      text: "Smoking",
                      isChecked: controller.isSmoking.value,
                      onCheckboxChanged: (v) =>
                          controller.setSmoking(v ?? false),
                    ),
                    SizedBox(height: AppSize.width(value: 6)),

                    // Children
                    RowItemWithDividerWithCheckBox(
                      text: "Children",
                      isChecked: controller.isChildren.value,
                      onCheckboxChanged: (v) =>
                          controller.setChildren(v ?? false),
                    ),
                    SizedBox(height: AppSize.width(value: 6)),

                    // Politics row with arrow
                    RowItemWithDivider(
                      text: "Politics",
                      onTap: () {
                        Get.toNamed(AppRoutes.instance.politicsScreen);
                      },
                    ),
                    SizedBox(height: AppSize.width(value: 6)),
                    // Education Level row with arrow
                    RowItemWithDivider(
                      text: "Education Level",
                      onTap: () {
                        Get.toNamed(AppRoutes.instance.educationLevelScreen);
                      },
                    ),
                  ],
                ),
              ),

              const Spacer(),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 100.0,
                  vertical: 12,
                ),
                child: AppButton(
                  borderRadius: BorderRadius.circular(24),
                  onTap: () {
                    Get.toNamed(AppRoutes.instance.navigationScreen);
                  },
                  title: "DONE",
                  filColor: AppColors.instance.blue,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
