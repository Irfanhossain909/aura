import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_button/app_button.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';

class IceBreakScreen extends StatelessWidget {
  const IceBreakScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              isDividerShow: false,
              logoUnderText: "",
              title: "ICE BREAKER GAMES",
              action: Row(
                spacing: AppSize.width(value: 4),
                children: [
                  AppImage(
                    path: AssetsIconsPath.instance.appPlus,
                    width: AppSize.width(value: 18),
                  ),
                  AppText(
                    data: "1200",
                    fontSize: AppSize.width(value: 22),
                    fontWeight: FontWeight.w600,
                    color: AppColors.instance.white,
                  ),
                  AppImage(
                    path: AssetsIconsPath.instance.currencyIc,
                    width: AppSize.width(value: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                spacing: AppSize.size.height * 0.03,
                children: [
                  AppText(
                    fontSize: AppSize.width(value: 18),
                    color: AppColors.instance.white,
                    textAlign: TextAlign.center,
                    data:
                        "UNLOCK PREMIUM ICEBREAKER GAMES SUCH AS WOULD YOU RATHER, NEVER HAVE I EVER, AND 3 QUESTIONS. BECAUSE BETTER QUESTIONS LEAD TO BETTER CONNECTIONS. ALL ICE BREAKER GAMES ADD 90 SECONDS TO YOUR CALL.",
                  ),
                  ItemShowCard(),
                  ItemShowCard(),
                  ItemShowCard(),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.instance.black.withValues(alpha: 0.8),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: AppColors.instance.blue),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ItemBuyCard(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  backgroundColor: AppColors.instance.black
                                      .withValues(
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
                                      data: "CONFIRM PURCHASE",
                                      fontSize: AppSize.width(value: 24),
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.instance.blue,
                                    ),
                                  ), // Title centered
                                  content: AppText(
                                    data:
                                        'PLEASE CONFIRM TO COMPLETE YOUR PURCHASE.',
                                    textAlign: TextAlign
                                        .center, // Ensure text is centered
                                    fontSize: AppSize.width(value: 16),
                                    color: AppColors.instance.white,
                                  ),
                                  // Content centered and adjusted height
                                  actions: [
                                    Row(
                                      spacing: 16,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Center(
                                          child: AppButton(
                                            title: "CONFIRM",
                                            filColor: AppColors.instance.blue,
                                            width: AppSize.width(value: 100),
                                            height: 30,
                                            borderRadius: BorderRadius.circular(
                                              16,
                                            ),
                                          ),
                                        ),
                                        Center(
                                          child: AppButton(
                                            title: "CENCEL",
                                            filColor:
                                                AppColors.instance.greyMedium,
                                            width: AppSize.width(value: 100),
                                            height: 30,
                                            borderRadius: BorderRadius.circular(
                                              16,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ], // Centered button
                                );
                              },
                            );
                          },
                        ),
                        ItemBuyCard(),
                        ItemBuyCard(),
                      ],
                    ),
                  ),
                  Gap(height: 100),
                  SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemBuyCard extends StatelessWidget {
  final VoidCallback? onTap;
  const ItemBuyCard({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSize.width(value: 20),
          vertical: AppSize.width(value: 10),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.instance.white,
        ),
        child: Column(
          spacing: 4,
          children: [
            AppText(data: "3", color: AppColors.instance.black),
            AppText(data: "GAMES", color: AppColors.instance.black),
            Container(
              decoration: BoxDecoration(
                color: AppColors.instance.blue,
                borderRadius: BorderRadius.circular(12),
              ),

              padding: EdgeInsets.symmetric(
                horizontal: AppSize.width(value: 6),
                vertical: AppSize.width(value: 2),
              ),
              child: AppText(data: "12 AP", color: AppColors.instance.white),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemShowCard extends StatelessWidget {
  const ItemShowCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.instance.blue),
        color: AppColors.instance.black.withValues(alpha: 0.8),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppSize.size.width * 0.05,
        vertical: 16,
      ),
      child: Column(
        spacing: AppSize.size.height * 0.01,
        children: [
          AppImage(
            path: AssetsIconsPath.instance.game1,
            width: AppSize.width(value: 88),
          ),

          AppText(
            color: AppColors.instance.white,
            textAlign: TextAlign.center,
            height: 1.4,
            letterSpacing: 0.5,
            data:
                "THREE TAILORED WOULD YOU RATHER SCENARIOS TO GET THE CONVERSATION FLOWING",
          ),
        ],
      ),
    );
  }
}
