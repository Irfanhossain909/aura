import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/screens/settings_screen/contact_list_screen/controller/contact_list_controller.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final ContactListController controller = Get.find<ContactListController>();
    return GetBuilder<ContactListController>(
      init: ContactListController(),
      builder: (controller) {
        return ScaffoldWithBgImage(
          body: DefaultTabController(
            length: 2,
            initialIndex: 0,
            child: Column(
              children: [
                CustomAppBar(
                  logoUnderText: "CONTACT & BLOCK",
                  title: "",
                  isDividerShow: false,
                  action: Container(
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: AppColors.instance.white),
                      color: AppColors.instance.blue,
                    ),
                    child: AppText(
                      data: "SYNC CONTACT",
                      fontSize: AppSize.width(value: 16),
                      fontWeight: FontWeight.w600,
                      color: AppColors.instance.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    // color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TabBar(
                    tabs: [
                      Tab(
                        child: AppText(
                          data: "ALL CONTACT",
                          fontSize: AppSize.width(value: 18),
                          color: AppColors.instance.white,
                        ),
                      ),
                      Tab(
                        child: AppText(
                          data: "BLOCKED",
                          fontSize: AppSize.width(value: 18),
                          color: AppColors.instance.white,
                        ),
                      ),
                    ],
                    indicator: BoxDecoration(
                      color: AppColors.instance.btnBg,
                      border: Border.all(color: AppColors.instance.blue),
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
                      //////TAB 1
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Obx(
                          () => Column(
                            spacing: AppSize.size.height * 0.02,
                            children: controller.contacts.asMap().entries.map((
                              entry,
                            ) {
                              int index = entry.key;
                              ContactItem contact = entry.value;
                              return RowItemEditTextDivider(
                                text: contact.text,
                                index: index,
                                controller: controller,
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      //////TAB 2
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Obx(
                          () => Column(
                            spacing: AppSize.size.height * 0.02,
                            children: controller.contacts.asMap().entries.map((
                              entry,
                            ) {
                              int index = entry.key;
                              ContactItem contact = entry.value;
                              return RowItemEditTextDivider(
                                text: contact.text,
                                index: index,
                                controller: controller,
                              );
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

class RowItemEditTextDivider extends StatelessWidget {
  final String? text;
  final int? index;
  final ContactListController? controller;
  const RowItemEditTextDivider({
    super.key,
    this.text,
    this.index,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSize.width(value: 8),
      children: [
        Row(
          children: [
            AppText(
              data: text ?? "(##) ##-##",
              fontSize: AppSize.width(value: 20),
              fontWeight: FontWeight.w600,
              color: AppColors.instance.white,
            ),

            Gap(width: 16),

            // Show "REMOVE" button
            InkWell(
              onTap: () => controller?.removeContact(index ?? -1),
              child: AppText(
                data: "REMOVE",
                fontSize: AppSize.width(value: 12),
                fontWeight: FontWeight.w500,
                color: AppColors.instance.blue,
              ),
            ),

            Spacer(),

            AppImage(
              width: 16,
              height: 16,
              path: AssetsIconsPath.instance.icArrowRight,
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
