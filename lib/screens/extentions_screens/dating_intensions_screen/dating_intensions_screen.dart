import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/screens/extentions_screens/dating_intensions_screen/controler/dating_intensions_controller.dart';
import 'package:aura/screens/extentions_screens/member_prefference_screen/controler/member_prefference_controller.dart';
import 'package:aura/utils/applog/app_print.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/app_row_item_with_checkbox/app_row_item_with_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DatingIntensionsScreen extends StatelessWidget {
  const DatingIntensionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: GetBuilder<DatingIntensionsController>(
        init: DatingIntensionsController(),
        builder: (controller) {
          return Column(
            children: [
              // Fixed header section
              CustomAppBar(
                title: "DATING INTENTIONS",
                action: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        AppPrint.appLog("Setting Tapped");
                      },
                      child: AppImage(
                        path: AssetsIconsPath.instance.icOptions,
                        width: AppSize.width(value: 24),
                        height: AppSize.width(value: 24),
                      ),
                    ),
                    Gap(width: 20),
                    InkWell(
                      onTap: () {
                        AppPrint.appLog("Setting Tapped");
                      },
                      child: AppImage(
                        path: AssetsIconsPath.instance.icSetting,
                        width: AppSize.width(value: 24),
                        height: AppSize.width(value: 24),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Obx(() {
                  return Column(
                    spacing: AppSize.size.height * 0.015,
                    children: [
                      RowItemWithDividerWithCheckBox(
                        text: "LIFE PARTNER",
                        isChecked: controller.lifepartnerChecked.value,
                        onCheckboxChanged: (value) {
                          controller.toggleLifepartner();
                        },
                      ),
                      RowItemWithDividerWithCheckBox(
                        text: "LONG-TERM RELATIONSHIP",
                        isChecked: controller.longTermRelationshipChecked.value,
                        onCheckboxChanged: (value) {
                          controller.toggleLongTermRelationship();
                        },
                      ),
                      RowItemWithDividerWithCheckBox(
                        text: "SHORT-TIME RELATIONSHIP",
                        isChecked:
                            controller.shortTimeRelationshipChecked.value,
                        onCheckboxChanged: (value) {
                          controller.toggleShortTimeRelationship();
                        },
                      ),
                      RowItemWithDividerWithCheckBox(
                        text: "DOES NOT MATTER",
                        isChecked: controller.doesNotMatterChecked.value,
                        onCheckboxChanged: (value) {
                          controller.toggledoesNotMatter();
                        },
                      ),
                    ],
                  );
                }),
              ),

              // Scrollable content
            ],
          );
        },
      ),
    );
  }
}
