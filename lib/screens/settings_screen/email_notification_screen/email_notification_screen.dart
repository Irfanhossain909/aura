import 'package:aura/const/app_colors.dart';
import 'package:aura/screens/settings_screen/email_notification_screen/controller/email_notification_controller.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/app_row_item_with_checkbox/app_row_item_with_toggle.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailNotificationScreen extends StatelessWidget {
  const EmailNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: GetBuilder<EmailNotificationController>(
        init: EmailNotificationController(),
        builder: (controller) {
          return Obx(() {
            return Column(
              children: [
                CustomAppBar(
                  title: "EMAIL NOTIFICATION",
                  logoUnderText: "EMAIL NOTIFICATION",
                  action: SizedBox(),
                ),

                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      RowItemWithDividerWithToggle(
                        text: "ENABLE ALL NOTIFICATION",
                        isEnabled: controller.newMatchesNotification.value,
                        onToggleChanged: (value) =>
                            controller.toggleNewMatches(),
                      ),

                      SizedBox(height: AppSize.height(value: 15)),

                      RowItemWithDividerWithToggle(
                        text: "MUTE ALL NOTIFICATION",
                        isEnabled: controller.newMessagesNotification.value,
                        onToggleChanged: (value) =>
                            controller.toggleNewMessages(),
                      ),

                      SizedBox(height: AppSize.height(value: 15)),

                      AppText(
                        data: "NOTIFICATION",
                        fontSize: 24,
                        color: AppColors.instance.white,
                      ),
                      SizedBox(height: AppSize.height(value: 15)),
                      RowItemWithDividerWithToggle(
                        text: "NEW MESSAGE",
                        isEnabled: controller.profileViewsNotification.value,
                        onToggleChanged: (value) =>
                            controller.toggleProfileViews(),
                      ),

                      SizedBox(height: AppSize.height(value: 15)),

                      RowItemWithDividerWithToggle(
                        text: "PROMOTIONS",
                        isEnabled: controller.likesNotification.value,
                        onToggleChanged: (value) => controller.toggleLikes(),
                      ),

                      SizedBox(height: AppSize.height(value: 15)),

                      RowItemWithDividerWithToggle(
                        text: "ANNOUNCEMENTS",
                        isEnabled: controller.superLikesNotification.value,
                        onToggleChanged: (value) =>
                            controller.toggleSuperLikes(),
                      ),
                    ],
                  ),
                ),
              ],
            );
          });
        },
      ),
    );
  }
}
