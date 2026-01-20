import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/screens/extentions_screens/ethnicity_screen/controller/ethnicity_controller.dart';
import 'package:aura/utils/applog/app_print.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/app_row_item_with_checkbox/app_row_item_with_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class EthnicityScreen extends StatelessWidget {
  const EthnicityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: GetBuilder<EthnicityController>(
        init: EthnicityController(),
        builder: (controller) {
          return Column(
            children: [
              // Fixed header section
              CustomAppBar(
                logoUnderText: "ETHNICITY",
                title: "ETHNICITY",
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
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Obx(() {
                          return Column(
                            spacing: AppSize.size.height * 0.015,
                            children: [
                              RowItemWithDividerWithCheckBox(
                                text: "BLACK / AFRICA DECENT",
                                isChecked:
                                    controller.blackAfricaDecentChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleBlackAfricaDescent();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "EAST ASIA",
                                isChecked: controller.eastAsiaChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleEastAsia();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "HISPANIC / LATINO",
                                isChecked: controller.hispanicLatinoChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleHispanicLatino();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "MIDDLE EASTERN",
                                isChecked: controller.middleEasternChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleMiddleEastern();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "NATIVE AMERICAN",
                                isChecked: controller.nativeAmericanChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleNativeAmerican();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "PACIFIC ISLANDER",
                                isChecked:
                                    controller.pacificIslanderChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.togglePacificIslander();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "SOUTH ASIAN",
                                isChecked: controller.southAsianChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleSouthAsian();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "SOUTHEAST ASIAN",
                                isChecked: controller.southeastAsianChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleSoutheastAsian();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "WHITE CAUCASIAN",
                                isChecked: controller.whiteCaucasianChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleWhiteCaucasian();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "OTHER",
                                isChecked: controller.otherChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleOther();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "OPEN TO ALL",
                                isChecked: controller.openToAllChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleOpenToAll();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "PISCES",
                                isChecked: controller.piscesChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.togglePisces();
                                },
                              ),
                            ],
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),

              // Scrollable content
            ],
          );
        },
      ),
    );
  }
}
