import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/screens/home_screens/home_main_screen/controller/home_main_controller.dart';
import 'package:aura/utils/applog/app_print.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_button/app_button.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_home_bg_image.dart';
import 'package:aura/widgets/input_text/app_input_widget_two.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeMainScreen extends StatelessWidget {
  const HomeMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: ScaffoldWithHomeBgImage(
        body: SafeArea(
          child: GetBuilder<HomeMainController>(
            init: HomeMainController(),
            builder: (controller) {
              return Column(
                children: [
                  Gap(height: AppSize.size.height * 0.07),
                  AppImage(width: 160, path: AssetsIconsPath.instance.auraIcon),

                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 18,
                    ),
                    child: Obx(() {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Left item
                          _buildMenuItem(
                            controller,
                            controller.selectedMenuIndex.value == 0
                                ? 1
                                : controller.selectedMenuIndex.value == 1
                                ? 0
                                : 2,
                            context,
                          ),
                          // Center item (selected)
                          _buildMenuItem(
                            controller,
                            controller.selectedMenuIndex.value,
                            context,
                            isCenter: true,
                          ),
                          // Right item
                          _buildMenuItem(
                            controller,
                            controller.selectedMenuIndex.value == 0
                                ? 2
                                : controller.selectedMenuIndex.value == 1
                                ? 2
                                : 0,
                            context,
                          ),
                        ],
                      );
                    }),
                  ),
                  Gap(height: AppSize.size.height * 0.1),
                  GestureDetector(
                    onTap: () {
                      controller.delayedFunction();
                    },
                    child: Obx(() {
                      return controller.isNAvigate.value
                          ? Center(
                              child: AppText(
                                data: "Searching",
                                fontSize: AppSize.width(value: 18),
                                color: AppColors.instance.white,
                              ),
                            )
                          : Container(
                              padding: EdgeInsets.all(AppSize.width(value: 4)),
                              decoration: BoxDecoration(
                                color: Colors.black87.withValues(alpha: 0.7),
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                  color: AppColors.instance.white,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.instance.blue.withValues(
                                      alpha: 0.3,
                                    ), // নরম ব্লু শ্যাডো
                                    offset: const Offset(
                                      0,
                                      4,
                                    ), // নিচের দিকে shadow
                                    blurRadius: 20, // ছড়ানো effect
                                    spreadRadius: 10, // হালকা করে সীমাবদ্ধ রাখে
                                  ),
                                ],
                              ),
                              child: AppImage(
                                width: AppSize.width(value: 88),
                                height: AppSize.width(value: 88),
                                path: AssetsIconsPath.instance.appLogo,
                              ),
                            );
                    }),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Future<dynamic> showDialogForSelectCity(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Search input like the screenshot
              AppInputWidgetTwo(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                fillColor: Colors.transparent,
                hintText: "ENTER YOUR ADDRESS, NEIGHBERHOOD, DR ZIP",
              ),
              SizedBox(height: 12),
              // Map card with overlay panel
              Stack(
                children: [
                  Container(
                    width: AppSize.size.width * 0.88,
                    decoration: BoxDecoration(
                      color: const Color(0xFF46D7D8),
                      borderRadius: BorderRadius.circular(28),
                    ),
                    padding: EdgeInsets.all(12),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: AppImage(
                        width: AppSize.size.width * 0.88,
                        path: AssetsIconsPath.instance.mapImg,
                      ),
                    ),
                  ),
                  // Right side panel
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: Container(
                      width: AppSize.width(value: 170),
                      decoration: BoxDecoration(
                        color: AppColors.instance.black.withValues(alpha: 0.85),
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: Colors.white24, width: 1),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 14,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              AppText(
                                data: "Most ",
                                fontSize: AppSize.width(value: 12),
                                color: AppColors.instance.white,
                                fontWeight: FontWeight.w700,
                              ),
                              AppText(
                                data: "ACTIVE",
                                fontSize: AppSize.width(value: 12),
                                color: AppColors.instance.blue,
                                fontWeight: FontWeight.w800,
                              ),
                            ],
                          ),
                          AppText(
                            data: "Cities",
                            fontSize: AppSize.width(value: 10),
                            color: AppColors.instance.white,
                          ),
                          SizedBox(height: 8),
                          Container(height: 1, color: Colors.white24),
                          SizedBox(height: 8),
                          ...[
                            "1. ATLANTA, GA",
                            "2. ATLANTA, GA",
                            "3. LOS ANGELES, CA",
                          ].map(
                            (city) => Padding(
                              padding: EdgeInsets.symmetric(vertical: 6),
                              child: AppText(
                                data: city,
                                fontSize: AppSize.width(value: 11),
                                color: AppColors.instance.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Future<dynamic> showDialogForLocal(
    BuildContext context,
    HomeMainController controller,
  ) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: AppColors.instance.black.withValues(
            alpha: 0.6,
          ), // Set your background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(24),
            ), // Optional: Adjust border radius
            side: BorderSide(
              color: Colors.blue,
              width: 2,
            ), // Blue border around the dialog
          ),
          title: Center(
            child: AppText(
              data: "Local",
              fontSize: AppSize.width(value: 24),
              fontWeight: FontWeight.w600,
              color: AppColors.instance.white,
            ),
          ), // Title centered
          content: Padding(
            padding: EdgeInsets.all(16.0), // Add padding to content if needed
            child: AppText(
              data:
                  'Talk to people in your area... you might just find the one!',
              textAlign: TextAlign.center, // Ensure text is centered
              style: GoogleFonts.poppins(
                fontSize: AppSize.width(value: 16),
                color: AppColors.instance.white,
              ),
            ),
          ), // Content centered and adjusted height
          actions: [
            Center(
              child: AppButton(
                title: "JOIN",
                filColor: AppColors.instance.blue,
                width: AppSize.width(value: 200),
                height: 30,
                borderRadius: BorderRadius.circular(16),
                onTap: () {
                  controller.joinLocal();
                },
              ),
            ),
          ], // Centered button
        );
      },
    );
  }

  Widget _buildMenuItem(
    HomeMainController controller,
    int index,
    BuildContext context, {
    bool isCenter = false,
  }) {
    String menuText = controller.menuItems[index];
    bool isSelected = isCenter;

    return InkWell(
      onTap: () {
        controller.selectMenuItem(index);

        // Handle specific actions based on menu item
        switch (index) {
          case 0: // LOCAL
            AppPrint.apiResponse("Clicked Local");
            showDialogForLocal(context, controller);
            break;
          case 1: // SELECT CITY
            showDialogForSelectCity(context);
            break;
          case 2: // EXPLORE
            AppPrint.apiResponse("Clicked Explore");
            break;
        }
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Show image for LOCAL when joined, otherwise show text
          if (index == 0 && controller.isLocalJoined.value)
            AppImage(
              width: 100,
              height: 70,
              path: AssetsIconsPath.instance.menuText, // Using menuText image
            )
          else
            AppText(
              data: menuText,
              fontSize: AppSize.width(value: isSelected ? 34 : 18),
              fontWeight: FontWeight.w500,
              color: isSelected
                  ? AppColors.instance.white
                  : AppColors.instance.white.withValues(alpha: 0.7),
            ),
          if (isSelected)
            Icon(
              Icons.arrow_drop_down,
              size: 50,
              color: AppColors.instance.white,
            ),
        ],
      ),
    );
  }
}
