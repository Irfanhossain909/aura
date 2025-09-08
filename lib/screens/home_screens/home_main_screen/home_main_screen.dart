import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/utils/applog/app_print.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/app_button/app_button.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_home_bg_image.dart';
import 'package:aura/widgets/input_text/app_input_widget_two.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';

class HomeMainScreen extends StatelessWidget {
  const HomeMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: ScaffoldWithHomeBgImage(
        body: SafeArea(
          child: Column(
            children: [
              AppImage(width: 160, path: AssetsIconsPath.instance.auraIcon),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        AppPrint.apiResponse("Clicked Local");

                        showDialogForLocal(context);
                      },
                      child: Row(
                        children: [
                          AppText(
                            data: "LOCAL",
                            fontSize: AppSize.width(value: 18),
                            fontWeight: FontWeight.w600,
                            color: AppColors.instance.white,
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 50,
                            color: AppColors.instance.white,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              backgroundColor: Colors.transparent,
                              insetPadding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 24,
                              ),
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
                                    hintText:
                                        "ENTER YOUR ADDRESS, NEIGHBERHOOD, DR ZIP",
                                  ),
                                  SizedBox(height: 12),
                                  // Map card with overlay panel
                                  Stack(
                                    children: [
                                      Container(
                                        width: AppSize.size.width * 0.88,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF46D7D8),
                                          borderRadius: BorderRadius.circular(
                                            28,
                                          ),
                                        ),
                                        padding: EdgeInsets.all(12),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          child: AppImage(
                                            width: AppSize.size.width * 0.88,
                                            path:
                                                AssetsIconsPath.instance.mapImg,
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
                                            color: AppColors.instance.black
                                                .withValues(alpha: 0.85),
                                            borderRadius: BorderRadius.circular(
                                              24,
                                            ),
                                            border: Border.all(
                                              color: Colors.white24,
                                              width: 1,
                                            ),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 16,
                                            vertical: 14,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Row(
                                                children: [
                                                  AppText(
                                                    data: "Most ",
                                                    fontSize: AppSize.width(
                                                      value: 12,
                                                    ),
                                                    color: AppColors
                                                        .instance
                                                        .white,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  AppText(
                                                    data: "ACTIVE",
                                                    fontSize: AppSize.width(
                                                      value: 12,
                                                    ),
                                                    color:
                                                        AppColors.instance.blue,
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                                ],
                                              ),
                                              AppText(
                                                data: "Cities",
                                                fontSize: AppSize.width(
                                                  value: 10,
                                                ),
                                                color: AppColors.instance.white,
                                              ),
                                              SizedBox(height: 8),
                                              Container(
                                                height: 1,
                                                color: Colors.white24,
                                              ),
                                              SizedBox(height: 8),
                                              ...[
                                                "1. ATLANTA, GA",
                                                "2. ATLANTA, GA",
                                                "3. LOS ANGELES, CA",
                                              ].map(
                                                (city) => Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    vertical: 6,
                                                  ),
                                                  child: AppText(
                                                    data: city,
                                                    fontSize: AppSize.width(
                                                      value: 11,
                                                    ),
                                                    color: AppColors
                                                        .instance
                                                        .white,
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
                      },
                      child: Row(
                        children: [
                          AppText(
                            data: "SELECT CITY",
                            fontSize: AppSize.width(value: 18),
                            fontWeight: FontWeight.w600,
                            color: AppColors.instance.white,
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 50,
                            color: AppColors.instance.white,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        AppPrint.apiResponse("Clicked Explore");
                      },
                      child: Row(
                        children: [
                          AppText(
                            data: "EXPLORE",
                            fontSize: AppSize.width(value: 18),
                            fontWeight: FontWeight.w600,
                            color: AppColors.instance.white,
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 50,
                            color: AppColors.instance.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> showDialogForLocal(BuildContext context) {
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
              data: "Night Out",
              fontSize: AppSize.width(value: 34),
              fontWeight: FontWeight.w600,
              color: AppColors.instance.white,
            ),
          ), // Title centered
          content: Padding(
            padding: EdgeInsets.all(16.0), // Add padding to content if needed
            child: AppText(
              data:
                  'THINKING ABOUT GOING OUT TONIGHT?? TALK TO PEOPLE GOING TO THE SAME PLACE TONIGHT OR GET A VIBE OF WHERE PEOPLE ARE GOING!',
              textAlign: TextAlign.center, // Ensure text is centered
              fontSize: AppSize.width(value: 16),
              color: AppColors.instance.white,
            ),
          ), // Content centered and adjusted height
          actions: [
            Center(
              child: AppButton(
                title: "JOIN",
                filColor: AppColors.instance.blue,
                width: AppSize.width(value: 100),
                height: 30,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ], // Centered button
        );
      },
    );
  }
}
