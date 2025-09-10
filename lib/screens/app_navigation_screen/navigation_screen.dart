import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/screens/app_navigation_screen/controller/navigation_screen_controller.dart';
import 'package:aura/screens/chat_screens/chat_list_screen/chat_list_screen.dart';
import 'package:aura/screens/home_screens/home_main_screen/home_main_screen.dart';
import 'package:aura/screens/profile_screens/profile_screen/profile_screen.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: NavigationScreenController(),
      builder: (controller) {
        return Scaffold(
          bottomSheet: Container(
            margin: const EdgeInsets.all(16),
            padding: EdgeInsets.only(
              bottom: AppSize.width(value: 12),
              top: AppSize.width(value: 12),
            ),

            child: Obx(
              () => SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(3, (index) {
                    final isSelected = controller.selectedIndex.value == index;
                    final iconPaths = [
                      AssetsIconsPath.instance.conversationIcon,
                      AssetsIconsPath.instance.appLogo,

                      AssetsIconsPath.instance.profileIcon,
                    ];

                    return GestureDetector(
                      onTap: () => controller.changeIndex(index),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? AppColors.instance.blue.withOpacity(0.1)
                              : Colors.transparent,
                          border: Border.all(
                            color: isSelected
                                ? AppColors.instance.blue
                                : Colors.transparent,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: AnimatedScale(
                          scale: isSelected ? 1.1 : 1.0,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          child: AppImage(
                            path: iconPaths[index],
                            width: isSelected ? 28 : 24,
                            height: isSelected ? 28 : 24,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
          body: Obx(
            () => IndexedStack(
              index: controller.selectedIndex.value,
              children: [
                ChatListScreen(),
                HomeMainScreen(),
                ProfileScreen(),
              ],
            ),
          ),
        );
      },
    );
  }
}
