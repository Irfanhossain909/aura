import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/screens/extentions_screens/zoodiac_prefereance_screen/controller/zoodiac_prefereance_controller.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/app_row_item_with_checkbox/app_row_item_with_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ZoodiacPrefereanceScreen extends StatelessWidget {
  const ZoodiacPrefereanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: GetBuilder<ZoodiacPrefereanceController>(
        init: ZoodiacPrefereanceController(),
        builder: (controller) {
          return Column(
            children: [
              CustomAppBar(
                logoUnderText: "ZODIAC",
                title: "PREFERANCE",
                action: Row(
                  children: [
                    AppImage(
                      path: AssetsIconsPath.instance.icOptions,
                      width: AppSize.width(value: 24),
                      height: AppSize.width(value: 24),
                    ),
                    Gap(width: 20),
                    AppImage(
                      path: AssetsIconsPath.instance.icSetting,
                      width: AppSize.width(value: 24),
                      height: AppSize.width(value: 24),
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
                                text: "Aries",
                                isChecked: controller.ariesChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleAries();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "Taurus",
                                isChecked: controller.taurusChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleTaurus();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "Gemini",
                                isChecked: controller.geminiChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleGemini();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "Cancer",
                                isChecked: controller.cancerChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleCancer();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "Leo",
                                isChecked: controller.leoChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleLeo();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "Virgo",
                                isChecked: controller.virgoChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleVirgo();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "Libra",
                                isChecked: controller.libraChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleLibra();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "Scorpio",
                                isChecked: controller.scorpioChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleScorpio();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "Sagittarius",
                                isChecked: controller.sagittariusChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleSagittarius();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "Capricorn",
                                isChecked: controller.capricornChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleCapricorn();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "Aquarius",
                                isChecked: controller.aquariusChecked.value,
                                onCheckboxChanged: (value) {
                                  controller.toggleAquarius();
                                },
                              ),
                              RowItemWithDividerWithCheckBox(
                                text: "Pisces",
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
            ],
          );
        },
      ),
    );
  }
}
