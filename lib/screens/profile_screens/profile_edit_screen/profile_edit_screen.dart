import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/routes/app_routes.dart';
import 'package:aura/screens/profile_screens/profile_edit_screen/controller/profile_edit_controller.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appbar_auth.dart';
import 'package:aura/widgets/app_button/app_button.dart';
import 'package:aura/widgets/app_images/app_image_circular.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double adjustedChildAspectRatio = (screenWidth / 1) / (screenHeight / 6);

    return GetBuilder<ProfileEditController>(
      builder: (controller) => ScaffoldWithBgImage(
        body: SingleChildScrollView(
          child: Column(
            spacing: AppSize.size.height * 0.03,
            children: [
              CustomAppBarAuth(
                logoUnderText: "PROFILE EDIT",
                isProgressShown: false,
              ),
              Stack(
                children: [
                  AppImageCircular(
                    width: AppSize.width(value: 120),
                    path: AssetsIconsPath.instance.profileIcon,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 10,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: AppColors.instance.blue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.edit,
                        color: AppColors.instance.white,
                        size: 12,
                      ),
                    ),
                  ),
                ],
              ),

              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.edit, color: AppColors.instance.blue, size: 18),
                    Gap(width: AppSize.width(value: 12)),
                    AppText(
                      data: controller.userName.value,
                      fontSize: AppSize.width(value: 18),
                      fontWeight: FontWeight.w600,
                      color: AppColors.instance.white,
                    ),
                  ],
                ),
              ),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.edit, color: AppColors.instance.blue, size: 18),
                    Gap(width: AppSize.width(value: 12)),
                    AppText(
                      data: controller.currentAge.value.toInt().toString(),
                      fontSize: AppSize.width(value: 18),
                      fontWeight: FontWeight.w600,
                      color: AppColors.instance.white,
                    ),
                  ],
                ),
              ),
              AppText(
                data: "SELECT AGE RANGE",
                fontSize: AppSize.width(value: 18),
                fontWeight: FontWeight.w600,
                color: AppColors.instance.white,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSize.width(value: 20),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(value: 16),
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.instance.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Obx(
                    () => Row(
                      children: [
                        AppText(data: "${controller.minAge.value.toInt()}"),
                        Expanded(
                          child: RangeSlider(
                            values: RangeValues(
                              controller.minAge.value,
                              controller.maxAge.value,
                            ),
                            min: 18,
                            max: 65,
                            divisions: 47,
                            activeColor: AppColors.instance.blue,
                            inactiveColor: AppColors.instance.blue.withValues(
                              alpha: 0.3,
                            ),
                            onChanged: (RangeValues values) {
                              controller.updateMinAge(values.start);
                              controller.updateMaxAge(values.end);
                            },
                          ),
                        ),
                        AppText(data: "${controller.maxAge.value.toInt()}"),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.all(16),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),

                    color: AppColors.instance.white,
                  ),
                  child: Column(
                    children: [
                      AppText(
                        data: "FIND INTEREST",
                        fontSize: AppSize.width(value: 20),
                      ),
                      Gap(height: 6),
                      Container(
                        width: 200,
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSize.width(value: 12),
                          vertical: AppSize.width(value: 6),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: AppColors.instance.black),
                        ),
                        child: AppText(data: "Search..."),
                      ),
                      Gap(height: AppSize.width(value: 16)),

                      Container(
                        height: 7,
                        width: AppSize.size.width * 0.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: AppColors.instance.black,
                        ),
                      ),
                      Gap(height: AppSize.width(value: 16)),
                      SizedBox(
                        height: AppSize.size.height * 0.15,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: GridView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: adjustedChildAspectRatio,
                                  crossAxisCount: 3, // 3 items per row
                                  crossAxisSpacing: 1.0, // horizontal spacing
                                  mainAxisSpacing: 0, // vertical spacing
                                ),
                            itemCount: [
                              "VIDEO GAMES",
                              "VIDEO GAMES",
                              "TRAINING",
                              "POOL DAYS",
                              "POOL DAYS",
                              "READING",
                              "GYM",
                              "GYM",
                              "HIP-HOP",
                            ].length, // total number of items
                            itemBuilder: (BuildContext context, int index) {
                              final interests = [
                                "VIDEO GAMES",
                                "VIDEO GAMES",
                                "TRAINING",
                                "POOL DAYS",
                                "POOL DAYS",
                                "READING",
                                "GYM",
                                "GYM",
                                "HIP-HOP",
                              ];
                              return Wrap(
                                alignment: WrapAlignment
                                    .start, // Align items in the row
                                // spacing: 1.0, // horizontal spacing
                                // runSpacing: 1.0, // vertical spacing between lines
                                children: [
                                  HorizontalList(
                                    text: interests[index],
                                    fillColor: AppColors.instance.greyMedium,
                                    textSize: 14,
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AppButton(
                onTap: () {
                  Get.toNamed(AppRoutes.instance.myAboutMeScreen);
                },
                width: AppSize.size.width * 0.3,
                height: AppSize.width(value: 34),
                title: "CONFIRM",
                filColor: AppColors.instance.blue,
              ),
              AppButton(
                onTap: () {
                  Get.back();
                },
                width: AppSize.size.width * 0.2,
                height: AppSize.width(value: 34),
                title: "BACk",
                titleColor: AppColors.instance.black,
                filColor: AppColors.instance.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HorizontalList extends StatelessWidget {
  final String? text;
  final Color? fillColor;
  final double? textSize;
  const HorizontalList({super.key, this.text, this.fillColor, this.textSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSize.width(value: 10),
          vertical: AppSize.width(value: 4),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: fillColor ?? AppColors.instance.blue,
        ),
        child: AppText(
          data: text ?? "READING",
          fontSize: AppSize.width(value: textSize ?? 18),
          fontWeight: FontWeight.w600,
          color: AppColors.instance.white,
        ),
      ),
    );
  }
}
