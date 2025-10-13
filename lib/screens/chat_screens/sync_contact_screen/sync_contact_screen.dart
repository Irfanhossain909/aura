import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/screens/chat_screens/sync_contact_screen/controller/sync_contact_controller.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appbar_auth.dart';
import 'package:aura/widgets/app_button/app_button.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/app_image_circular.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SyncContactScreen extends StatelessWidget {
  const SyncContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SyncContactController>(
      init: SyncContactController(),
      builder: (controller) {
        return ScaffoldWithBgImage(
          body: DefaultTabController(
            length: 2,
            initialIndex: 1,
            child: Column(
              children: [
                CustomAppBarAuth(isProgressShown: false),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(value: 12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: AppImage(
                          path: AssetsIconsPath.instance.icArrowBAck,
                          width: AppSize.width(value: 24),
                          height: AppSize.width(value: 24),
                        ),
                      ),
                      SizedBox(
                        width: AppSize.width(value: 220),
                        child: AppText(
                          data:
                              "These users you block from you conmtacty list will bhe clocked from you match making que",
                          fontSize: AppSize.width(value: 12),
                          fontWeight: FontWeight.w400,
                          color: AppColors.instance.white.withValues(alpha: .7),
                          letterSpacing: 1,
                        ),
                      ),
                      SizedBox(),
                    ],
                  ),
                ),
                Gap(height: 12),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TabBar(
                    tabs: [
                      Tab(
                        child: AppText(
                          data: "RECENT CHAT",
                          fontSize: AppSize.width(value: 18),
                          color: AppColors.instance.white,
                        ),
                      ),
                      Tab(
                        child: AppText(
                          data: "RESTORE REQUEST",
                          fontSize: AppSize.width(value: 18),
                          color: AppColors.instance.white,
                        ),
                      ),
                    ],
                    indicator: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: AppColors.instance.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey[400],
                    indicatorColor: Colors.transparent,
                    dividerColor: Colors.transparent,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding: EdgeInsets.all(4),
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    splashFactory: NoSplash.splashFactory,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    width: double.infinity,
                    height: 4,
                    decoration: BoxDecoration(color: AppColors.instance.btnBg),
                  ),
                ),

                Expanded(
                  child: TabBarView(
                    children: [
                      //////TAB 1 - Recent Chat with Restore action
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Obx(
                          () => Column(
                            spacing: AppSize.size.height * 0.02,
                            children: controller.contacts.map((contact) {
                              return RowItemRestore(text: contact.text);
                            }).toList(),
                          ),
                        ),
                      ),
                      //////TAB 2 - Restore Request placeholder text
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Obx(
                          () => Column(
                            spacing: AppSize.size.height * 0.02,
                            children: controller.contacts.map((contact) {
                              return RowItemActeep(text: contact.text);
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class RowItemRestore extends StatelessWidget {
  final String? text;
  const RowItemRestore({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSize.width(value: 8),
      children: [
        Row(
          spacing: AppSize.width(value: 12),
          children: [
            AppImageCircular(
              path: AssetsIconsPath.instance.profileIcon,
              width: AppSize.width(value: 28),
            ),
            AppText(
              data: text ?? "(##) ##-##",
              fontSize: AppSize.width(value: 20),
              fontWeight: FontWeight.w600,
              color: AppColors.instance.white,
            ),

            Gap(width: 16),

            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (ctx) {
                    return AlertDialog(
                      backgroundColor: AppColors.instance.black.withValues(
                        alpha: 0.6,
                      ),
                      content: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: AppText(
                          height: 1.4,
                          letterSpacing: 1,
                          textAlign: TextAlign.center,
                          data:
                              "your restore request for travis is pending acceptance",
                          fontSize: AppSize.width(value: 20),
                          color: AppColors.instance.white,
                        ),
                      ),
                    );
                  },
                );
              },
              child: AppText(
                data: "RESTORE",
                fontSize: AppSize.width(value: 12),
                fontWeight: FontWeight.w500,
                color: AppColors.instance.blue,
              ),
            ),
          ],
        ),
        Container(
          width: double.infinity,
          height: 3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.instance.white.withValues(alpha: .8),
          ),
        ),
      ],
    );
  }
}

class RowItemActeep extends StatelessWidget {
  final String? text;
  const RowItemActeep({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSize.width(value: 8),
      children: [
        Row(
          spacing: AppSize.width(value: 12),
          children: [
            AppImageCircular(
              path: AssetsIconsPath.instance.profileIcon,
              width: AppSize.width(value: 34),
            ),
            AppText(
              data: text ?? "(##) ##-##",
              fontSize: AppSize.width(value: 20),
              fontWeight: FontWeight.w600,
              color: AppColors.instance.white,
            ),

            Gap(width: 16),

            // InkWell(
            //   onTap: () {
            //     showDialog(
            //       context: context,
            //       builder: (ctx) {
            //         return AlertDialog(
            //           backgroundColor: AppColors.instance.black.withValues(
            //             alpha: 0.6,
            //           ),
            //           content: Padding(
            //             padding: const EdgeInsets.symmetric(horizontal: 40),
            //             child: AppText(
            //               height: 1.4,
            //               letterSpacing: 1,
            //               textAlign: TextAlign.center,
            //               data:
            //                   "your restore request for travis is pending acceptance",
            //               fontSize: AppSize.width(value: 20),
            //               color: AppColors.instance.white,
            //             ),
            //           ),
            //         );
            //       },
            //     );
            //   },
            //   child: AppText(
            //     data: "RESTORE",
            //     fontSize: AppSize.width(value: 12),
            //     fontWeight: FontWeight.w500,
            //     color: AppColors.instance.blue,
            //   ),
            // ),
            Spacer(),
            AppButton(
              height: 26,
              width: 50,
              title: "ACCEPT",
              filColor: AppColors.instance.blue,
            ),
            AppButton(
              height: 26,
              filColor: AppColors.instance.black,
              width: 50,
              title: "DECLINE",
            ),
          ],
        ),
        Container(
          width: double.infinity,
          height: 3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.instance.white.withValues(alpha: .8),
          ),
        ),
      ],
    );
  }
}
