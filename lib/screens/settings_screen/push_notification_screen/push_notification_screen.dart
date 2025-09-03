import 'package:aura/screens/settings_screen/push_notification_screen/controller/push_notification_controller.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/app_bar/custom_appbar_auth.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/app_row_item_with_checkbox/app_row_item_with_toggle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PushNotificationScreen extends StatelessWidget {
  const PushNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: GetBuilder<PushNotificationController>(
        init: PushNotificationController(),
        builder: (controller) {
          return Column(
            children: [
              CustomAppBarAuth(logoUnderText: "PUSH NOTIFICATION"),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    RowItemWithDividerWithToggle(
                      text: "New Matches",
                      isEnabled: controller.newMatchesNotification.value,
                      onToggleChanged: (value) => controller.toggleNewMatches(),
                    ),

                    SizedBox(height: AppSize.height(value: 15)),

                    RowItemWithDividerWithToggle(
                      text: "New Messages",
                      isEnabled: controller.newMessagesNotification.value,
                      onToggleChanged: (value) =>
                          controller.toggleNewMessages(),
                    ),

                    SizedBox(height: AppSize.height(value: 15)),

                    RowItemWithDividerWithToggle(
                      text: "Profile Views",
                      isEnabled: controller.profileViewsNotification.value,
                      onToggleChanged: (value) =>
                          controller.toggleProfileViews(),
                    ),

                    SizedBox(height: AppSize.height(value: 15)),

                    RowItemWithDividerWithToggle(
                      text: "Likes",
                      isEnabled: controller.likesNotification.value,
                      onToggleChanged: (value) => controller.toggleLikes(),
                    ),

                    SizedBox(height: AppSize.height(value: 15)),

                    RowItemWithDividerWithToggle(
                      text: "Super Likes",
                      isEnabled: controller.superLikesNotification.value,
                      onToggleChanged: (value) => controller.toggleSuperLikes(),
                    ),

                    SizedBox(height: AppSize.height(value: 15)),

                    RowItemWithDividerWithToggle(
                      text: "Boost",
                      isEnabled: controller.boostNotification.value,
                      onToggleChanged: (value) => controller.toggleBoost(),
                    ),

                    SizedBox(height: AppSize.height(value: 15)),

                    RowItemWithDividerWithToggle(
                      text: "Events",
                      isEnabled: controller.eventsNotification.value,
                      onToggleChanged: (value) => controller.toggleEvents(),
                    ),

                    SizedBox(height: AppSize.height(value: 15)),

                    RowItemWithDividerWithToggle(
                      text: "Marketing",
                      isEnabled: controller.marketingNotification.value,
                      onToggleChanged: (value) => controller.toggleMarketing(),
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
