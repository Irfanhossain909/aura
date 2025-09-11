import 'package:aura/screens/extentions_screens/about_me_screen/controller/about_me_controller.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/app_row_item_with_checkbox/app_row_item_with_popup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: GetBuilder<AboutMeController>(
        init: AboutMeController(),
        builder: (controller) {
          return Column(
            children: [
              CustomAppBar(
                action: SizedBox(),
                logoUnderText: "height preference",
                title: "height preference",
              ),

              Builder(
                builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        RowItemWithDividerWithHeightSelector(
                          text: "Min Height",
                          selectedValue: controller.selectedMinHeight.value,
                          heightOptions: controller.heightOptions,
                          onValueChanged: (String value) {
                            controller.selectMinHeight(value);
                          },
                        ),

                        SizedBox(height: 16),

                        RowItemWithDividerWithHeightSelector(
                          text: "Max Height",
                          selectedValue: controller.selectedMaxHeight.value,
                          heightOptions: controller.heightOptions,
                          onValueChanged: (String value) {
                            controller.selectMaxHeight(value);
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
