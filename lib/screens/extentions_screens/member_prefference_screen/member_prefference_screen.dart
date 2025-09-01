// Solution 1: Using Column with fixed headers (Recommended)
import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/routes/app_routes.dart';
import 'package:aura/screens/extentions_screens/member_prefference_screen/controler/member_prefference_controller.dart';
import 'package:aura/utils/applog/app_print.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_row_item_with_checkbox/app_row_item_with_checkbox.dart';
import 'package:aura/widgets/app_row_item_with_checkbox/app_row_item_with_divider/app_row_item_with_divider.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MemberPrefferenceScreen extends StatelessWidget {
  const MemberPrefferenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: GetBuilder<MemberPrefferenceController>(
        init: MemberPrefferenceController(),
        builder: (controller) {
          return Column(
            children: [
              // Fixed header section
              CustomAppBar(
                title: "MEMBER PREFERENCE",
                action: InkWell(
                  onTap: () {
                    AppPrint.appLog("Setting Tapped");
                  },
                  child: AppImage(
                    path: AssetsIconsPath.instance.icSetting,
                    width: AppSize.width(value: 24),
                    height: AppSize.width(value: 24),
                  ),
                ),
              ),

              // Scrollable content
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    // Your scrollable content goes here
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.all(AppSize.width(value: 16)),
                        child: Obx(() {
                          return Column(
                            spacing: AppSize.size.height * 0.015,
                            children: [
                              Row(
                                spacing: AppSize.width(value: 20),
                                children: [
                                  Expanded(
                                    child: AuraButton(
                                      onTap: () {
                                        Get.toNamed(
                                          AppRoutes
                                              .instance
                                              .datingIntensionsScreen,
                                        );
                                      },
                                      text: "DATING INTENTIONS",
                                    ),
                                  ),
                                  Expanded(
                                    child: AuraButton(
                                      onTap: () {
                                        Get.toNamed(
                                          AppRoutes
                                              .instance
                                              .imInterestedInScreen,
                                        );
                                      },
                                      text: "IM INTERESTED IN",
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 90,
                                ),
                                child: AuraButton(text: "LANGUAGE"),
                              ),

                              AppText(
                                data: "ADVANCED PREFERENCES",
                                fontSize: AppSize.width(value: 24),
                                color: AppColors.instance.blue,
                              ),

                              Container(
                                height: 3,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: AppColors.instance.white,
                                ),
                              ),
                              Gap(height: 10),
                              RowItemWithDivider(text: "HEIGHT"),
                              RowItemWithDividerWithCheckBox(
                                text: "DRINKING",
                                isChecked: controller.drinkingChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleDrinking();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "MARIJUANA",
                                isChecked: controller.marijuanaChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleMarijuana();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "SMOKING",
                                isChecked: controller.smokingChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleSmoking();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "DOES NOT MATTER",
                                isChecked:
                                    controller.doesNotMatterChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleDoesNotMatter();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "CHILDREN",
                                isChecked: controller.chilredChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleChildren();
                                },
                              ),
                              RowItemWithDivider(text: "POLITICS"),
                              RowItemWithDivider(text: "EDUCATION LEVEL"),
                            ],
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class AuraButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? text;
  const AuraButton({super.key, this.onTap, this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSize.width(value: 20),
          vertical: AppSize.width(value: 12),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withValues(alpha: 0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 0), // This makes shadow equal on all sides
            ),
          ],
        ),
        child: Center(
          child: AppText(
            data: text ?? "Not Text",
            fontSize: AppSize.width(value: 18),
          ),
        ),
      ),
    );
  }
}
