import 'package:aura/screens/extentions_screens/im_interested_in_screen/controller/im_interested_in_controller.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/app_row_item_with_checkbox/app_row_item_with_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class ImInterestedInScreen extends StatelessWidget {
  const ImInterestedInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: GetBuilder<ImInterestedInController>(
        init: ImInterestedInController(),
        builder: (controller) {
          return Column(
            children: [
              CustomAppBar(title: "I'M INTERESTED IN", action: Row()),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Obx(() {
                  return Column(
                    spacing: AppSize.size.height * 0.015,
                    children: [
                      RowItemWithDividerWithCheckBox(
                        text: "MEN",
                        isChecked: controller.menChecked.value,
                        onCheckboxChanged: (value) {
                          controller.toggleMen();
                        },
                      ),
                      RowItemWithDividerWithCheckBox(
                        text: "WOMEN",
                        isChecked: controller.womenChecked.value,
                        onCheckboxChanged: (value) {
                          controller.togglewoMen();
                        },
                      ),
                      RowItemWithDividerWithCheckBox(
                        text: "NONBINARY PEOPLE",
                        isChecked: controller.nonbinarypeopleChecked.value,
                        onCheckboxChanged: (value) {
                          controller.togglenonbinarypeople();
                        },
                      ),
                      RowItemWithDividerWithCheckBox(
                        text: "EVERYONE",
                        isChecked: controller.everyoneChecked.value,
                        onCheckboxChanged: (value) {
                          controller.toggleeveryone();
                        },
                      ),
                    ],
                  );
                }),
              ),
            ],
          );
        },
      ),
    );
  }
}
