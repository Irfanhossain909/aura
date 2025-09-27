import 'package:aura/const/app_colors.dart';
import 'package:aura/screens/extentions_screens/politics_screen/controller/politics_controller.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_button/aura_button.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/app_row_item_with_checkbox/app_row_item_with_radio.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class PoliticsScreen extends StatelessWidget {
  const PoliticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: GetBuilder<PoliticsController>(
        init: PoliticsController(),
        builder: (controller) {
          return Column(
            children: [
              CustomAppBar(
                action: SizedBox(),
                logoUnderText: "POLITICS",
                title: "POLITICS",
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  spacing: AppSize.size.height * 0.015,
                  children: controller.options.map((option) {
                    return RowItemWithDividerWithRadio(
                      text: option,
                      isChecked: controller.isSelected(option),
                      onTap: () => controller.selectOption(option),
                      onRadioChanged: (value) =>
                          controller.selectOption(option),
                    );
                  }).toList(),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSize.width(value: 120),
                  vertical: AppSize.width(value: 40),
                ),
                child: AuraButton(
                  onTap: () {
                    // Get.toNamed(AppRoutes.instance.verifyCodeScreen);
                  },
                  filColor: AppColors.instance.blue,
                  textColor: AppColors.instance.white,
                  text: "DONE",
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
