import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_button/app_button.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_home_bg_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/vedio_call_controller.dart';

class VedioCallingScreen extends StatelessWidget {
  const VedioCallingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithHomeBgImage(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: GetBuilder<VedioCallController>(
            init: VedioCallController(),
            builder: (controller) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          AppImage(
                            path: AssetsIconsPath.instance.warningIc,
                            width: AppSize.width(value: 30),
                          ),
                          Gap(height: AppSize.width(value: 16)),
                          InkWell(
                            onTap: () {
                              callCancelDialog(context);
                            },
                            child: Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: AppColors.instance.red1,
                              ),
                              child: Icon(
                                Icons.close,
                                color: AppColors.instance.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      AppImage(
                        height: AppSize.size.height * 0.15,
                        path: AssetsIconsPath.instance.personImage,
                      ),
                    ],
                  ),
                  Gap(height: AppSize.width(value: 16)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      Obx(() {
                        return Column(
                          children: [
                            InkWell(
                              onTap: () {
                                controller.toggleIceBrekar();
                              },
                              child: controller.isIceBrekarShow.value
                                  ? Icon(Icons.ice_skating)
                                  : AppImage(
                                      path: AssetsIconsPath.instance.loveCard,
                                      width: AppSize.width(value: 52),
                                    ),
                            ),
                            InkWell(
                              onTap: () {
                                controller.toggleAuraCard();
                              },
                              child: AppImage(
                                path: AssetsIconsPath.instance.auraCard,
                                width: AppSize.width(value: 52),
                              ),
                            ),
                          ],
                        );
                      }),
                    ],
                  ),
                  Spacer(),

                  Obx(() {
                    // Check both conditions
                    if (controller.isIceBrekarShow.value) {
                      return Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: AppColors.instance.black.withValues(
                            alpha: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: AppColors.instance.blue),
                        ),
                        child: AppText(
                          data: "WHAT IS YOUR DREAM DATE LOCATION?",
                          fontSize: AppSize.width(value: 18),
                          color: AppColors.instance.white,
                        ),
                      );
                    } else if (controller.isAuraCardShow.value) {
                      return Container(
                        decoration: BoxDecoration(
                          color: AppColors.instance.black.withValues(
                            alpha: 0.1,
                          ),
                          border: Border.all(color: AppColors.instance.blue),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          spacing: AppSize.size.height * 0.01,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    border: Border.all(
                                      color: AppColors.instance.white,
                                    ),
                                  ),
                                  child: AppText(
                                    data: "1200 AP",
                                    fontSize: AppSize.width(value: 16),
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.instance.white,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.removeAuraCard();
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: AppColors.instance.red1,
                                    ),
                                    child: Icon(
                                      size: AppSize.width(value: 16),
                                      Icons.close,
                                      color: AppColors.instance.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            AppText(
                              data: "PLAY A GAME",
                              fontSize: AppSize.width(value: 18),
                              fontWeight: FontWeight.w600,
                              color: AppColors.instance.white,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: AppSize.width(value: 100),
                              ),
                              child: Divider(
                                color: AppColors.instance.blue,
                                height: 2,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppImage(
                                  path: AssetsIconsPath.instance.game1,
                                  width: AppSize.width(value: 68),
                                ),
                                AppImage(
                                  path: AssetsIconsPath.instance.game2,
                                  width: AppSize.width(value: 68),
                                ),
                                AppImage(
                                  path: AssetsIconsPath.instance.game3,
                                  width: AppSize.width(value: 68),
                                ),
                              ],
                            ),
                            AppButton(
                              width: 100,
                              title: "BUY A GAME 100 AP",
                              height: 28,
                              titleSize: 14,
                              borderRadius: BorderRadius.circular(16),
                              filColor: AppColors.instance.blue,
                            ),
                          ],
                        ),
                      );
                    } else {
                      return SizedBox(); // Default empty widget if neither condition is true
                    }
                  }),

                  Gap(height: AppSize.size.height * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(),
                      _MatchSwipeSwitch(),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColors.instance.white,
                        ),
                        child: AppText(data: "60+"),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Future<dynamic> callCancelDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.transparent, // Background color black
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          elevation: 0, // Set elevation to 0 as we'll use boxShadow
          // contentPadding:
          //     EdgeInsets.zero, // Remove default padding
          content: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.instance.black.withValues(
                alpha: 0.6,
              ), // Dialog background
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            width: 300, // Adjust width as needed
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText(
                  data: "ARE YOU SURE YOU WOULD LIKE TO END THE CALL?",
                  fontSize: AppSize.width(value: 16),
                  color: AppColors.instance.white,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Row(
                  spacing: AppSize.height(value: 8),
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: AppButton(
                        height: 34,
                        title: "YES",
                        filColor: AppColors.instance.blue,
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    Expanded(
                      child: AppButton(
                        height: 34,
                        decoration: BoxDecoration(
                          color: AppColors.instance.black,
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(color: AppColors.instance.blue),
                        ),
                        title: "NO",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actionsOverflowButtonSpacing: 0,
        );
      },
    );
  }
}

class _MatchSwipeSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final VedioCallController controller = Get.find<VedioCallController>();

    final double height = AppSize.width(value: 44);
    final double width = AppSize.width(value: 200);
    final double knobSize = height - AppSize.width(value: 8);

    return Obx(() {
      final bool isActive = controller.isMatched.value;
      final double alignX = controller.knobAlignX.value;
      return GestureDetector(
        onTap: controller.toggleMatched,
        onHorizontalDragUpdate: (details) {
          controller.updateDrag(details.primaryDelta! / width * 2);
        },
        onHorizontalDragEnd: (_) => controller.onDragEnd(),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          width: width,
          height: height,
          padding: EdgeInsets.all(AppSize.width(value: 4)),
          decoration: BoxDecoration(
            color: isActive
                ? AppColors.instance.green1
                : AppColors.instance.blue,
            borderRadius: BorderRadius.circular(height),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: AppText(
                  data: isActive ? 'Matched' : 'Match',
                  color: AppColors.instance.white,
                ),
              ),
              Align(
                alignment: Alignment(alignX, 0),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  width: knobSize,
                  height: knobSize,
                  decoration: BoxDecoration(
                    color: AppColors.instance.white,
                    borderRadius: BorderRadius.circular(knobSize),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
