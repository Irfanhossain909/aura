import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/screens/profile_screens/unlock_aura_screen/controller/unlock_aura_controller.dart';
import 'package:aura/screens/profile_screens/unlock_aura_screen/widget/feature_item_widget.dart';
import 'package:aura/screens/profile_screens/unlock_aura_screen/widget/plan_selection_card.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class UnlockAuraScreen extends StatelessWidget {
  const UnlockAuraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UnlockAuraController());

    return ScaffoldWithBgImage(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(AppSize.width(value: 16)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1.4,
                    color: AppColors.instance.blue.withValues(alpha: 0.8),
                  ),
                  color: AppColors.instance.black.withValues(alpha: 0.6),
                ),

                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: AppImage(
                            width: AppSize.width(value: 28),
                            path: AssetsIconsPath.instance.icArrowBAck,
                          ),
                        ),
                        SizedBox(),
                        SizedBox(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(),
                        AppImage(
                          width: AppSize.size.width * 0.4,
                          path: AssetsIconsPath.instance.auraPlus,
                        ),
                        SizedBox(),
                      ],
                    ),
                    Gap(height: AppSize.size.height * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText(
                          textAlign: TextAlign.center,
                          letterSpacing: 0.7,
                          data: "ENHANCE YOUR ",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.instance.white,
                          ),
                        ),
                        AppText(
                          textAlign: TextAlign.center,
                          letterSpacing: 0.7,
                          data: "AURA",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.instance.blue,
                          ),
                        ),
                        AppText(
                          textAlign: TextAlign.center,
                          letterSpacing: 0.7,
                          data: " POWER UP YOUR PRECENGE",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.instance.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(value: 16),
                  ),
                  child: Column(
                    children: [
                      // Plan Selection Cards
                      GridView.builder(
                        shrinkWrap:
                            true, // Important for wrapping inside Column or SingleChildScrollView
                        physics:
                            const NeverScrollableScrollPhysics(), // Disable inner scroll
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // 2 items per row
                          mainAxisSpacing: AppSize.width(value: 12),
                          crossAxisSpacing: AppSize.width(value: 12),
                          childAspectRatio:
                              3.0, // Adjust based on your card design
                        ),
                        itemCount: controller.plans.length,
                        itemBuilder: (context, index) {
                          final plan = controller.plans[index];
                          return Obx(
                            () => PlanSelectionCard(
                              title: plan['title'],
                              period: plan['period'],
                              price: plan['price'],
                              saveText: plan['save'],
                              isSelected:
                                  controller.selectedPlanIndex.value == index,
                              onTap: () => controller.selectPlan(index),
                            ),
                          );
                        },
                      ),

                      Gap(height: AppSize.size.height * 0.02),

                      GestureDetector(
                        onTap: () => controller.onUpgradePressed(),
                        child: AppImage(
                          path: AssetsIconsPath.instance.upgradeAuraBtn,
                        ),
                      ),

                      Gap(height: AppSize.size.height * 0.02),

                      // ENHANCE THE CONVERSATION Section
                      Container(
                        padding: EdgeInsets.all(AppSize.width(value: 12)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.instance.black500,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppImage(
                              width: AppSize.width(value: 150),
                              path: AssetsIconsPath.instance.game4,
                            ),
                            Column(
                              spacing: 8,
                              children: [
                                FeatureItemWidget(text: "Premium Games"),
                                FeatureItemWidget(
                                  text: "AI-selected icebreakers",
                                ),
                                FeatureItemWidget(
                                  text: "Bonus Time Extensions",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Gap(height: AppSize.size.height * 0.02),

                      // PRIORITY MATCHMAKING Section
                      Container(
                        padding: EdgeInsets.all(AppSize.width(value: 12)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.instance.black500,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppImage(
                              width: AppSize.width(value: 150),
                              path: AssetsIconsPath.instance.game5,
                            ),
                            Column(
                              spacing: 8,
                              children: [
                                FeatureItemWidget(text: "Advanced Filters"),
                                FeatureItemWidget(text: "Priority Placement"),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Gap(height: AppSize.size.height * 0.02),

                      // EXPAND YOUR REACH Section
                      Container(
                        padding: EdgeInsets.all(AppSize.width(value: 12)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.instance.black500,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppImage(
                              width: AppSize.width(value: 150),
                              path: AssetsIconsPath.instance.game6,
                            ),
                            Column(
                              spacing: 8,
                              children: [
                                FeatureItemWidget(text: "Select City"),
                                FeatureItemWidget(text: "6 Bonus Chats"),
                                FeatureItemWidget(text: "Restore Chats"),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Gap(height: AppSize.size.height * 0.05),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
