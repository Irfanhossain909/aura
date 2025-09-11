import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/app_button/app_button.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class UnlockAuraScreen extends StatelessWidget {
  const UnlockAuraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(AppSize.width(value: 16)),
              child: Row(
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
                  AppImage(
                    width: AppSize.size.width * 0.4,
                    path: AssetsIconsPath.instance.auraPlus,
                  ),
                  SizedBox(),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  spacing: AppSize.size.height * 0.02,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSize.size.width * 0.28,
                      ),
                      child: AppText(
                        textAlign: TextAlign.center,
                        letterSpacing: 0.7,
                        data: "ENHANCE YOUR AURA. POWER UP YOUR PRECENGE",
                        fontSize: AppSize.width(value: 18),
                        fontWeight: FontWeight.w400,
                        color: AppColors.instance.white,
                      ),
                    ),
                    AppImage(
                      width: AppSize.size.width * 0.4,
                      path: AssetsIconsPath.instance.offer1,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: UnlockAurtaCard(),
                    ),
                    AppImage(
                      width: AppSize.size.width * 0.4,
                      path: AssetsIconsPath.instance.offer2,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: UnlockAurtaCard(
                        text1: "-access to advanced",
                        text2: "matchmaking filters",
                        text3: "-priority placement in match ques",
                      ),
                    ),
                    AppImage(
                      width: AppSize.size.width * 0.4,
                      path: AssetsIconsPath.instance.offer3,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: UnlockAurtaCard(
                        text1: "- Select City",

                        text2: "- 6 Bonus Chats",
                        text3: "- Ability to restore Chats",
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.instance.black,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue, // Blue color for the shadow
                            offset: Offset(0, -0), // Offset for the top shadow
                            blurRadius: 10, // Adjust the blur radius
                          ),
                          BoxShadow(
                            color: Colors.blue, // Blue color for the shadow
                            offset: Offset(
                              0,
                              0,
                            ), // Offset for the bottom shadow
                            blurRadius: 2, // Adjust the blur radius
                          ),
                        ],
                      ),
                      width: double.infinity,
                      height: AppSize.size.height * 0.15,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(8.0),
                            child: UnlockOfferCard(),
                          );
                        },
                      ),
                    ),

                    SizedBox(height: AppSize.size.height * 0.05),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UnlockOfferCard extends StatelessWidget {
  final String? text1;
  final String? text2;
  final String? btnText;
  const UnlockOfferCard({super.key, this.text1, this.text2, this.btnText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: AppSize.width(value: 12)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.instance.black500,
        border: Border.all(color: AppColors.instance.white),
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            blurStyle: BlurStyle.normal,
            color: AppColors.instance.blue,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        spacing: AppSize.size.height * 0.01,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.instance.white,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: AppSize.width(value: 36),
              vertical: AppSize.width(value: 4),
            ),
            child: AppText(
              data: text1 ?? "WEEKLY",
              fontSize: AppSize.width(value: 12),
              color: AppColors.instance.blue,
            ),
          ),
          AppText(
            data: text2 ?? "1 WEEK",
            fontSize: AppSize.width(value: 18),
            color: AppColors.instance.white,
          ),
          AppButton(
            width: AppSize.size.width * 0.2,
            height: AppSize.size.height * 0.03,
            filColor: AppColors.instance.blue,
            borderRadius: BorderRadius.circular(16),
            title: btnText ?? "100 AP",
            onTap: () {
              showDialog(
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
                        data: "CONFIRM PURCHASE",
                        fontSize: AppSize.width(value: 24),
                        fontWeight: FontWeight.w600,
                        color: AppColors.instance.blue,
                      ),
                    ), // Title centered
                    content: AppText(
                      data: 'PLEASE CONFIRM TO COMPLETE YOUR PURCHASE.',
                      textAlign: TextAlign.center, // Ensure text is centered
                      fontSize: AppSize.width(value: 16),
                      color: AppColors.instance.white,
                    ),
                    // Content centered and adjusted height
                    actions: [
                      Row(
                        spacing: 16,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: AppButton(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              title: "CONFIRM",
                              filColor: AppColors.instance.blue,
                              width: AppSize.width(value: 100),
                              height: 30,
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          Center(
                            child: AppButton(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              title: "CENCEL",
                              filColor: AppColors.instance.greyMedium,
                              width: AppSize.width(value: 100),
                              height: 30,
                              borderRadius: BorderRadius.circular(16),
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
        ],
      ),
    );
  }
}

class UnlockAurtaCard extends StatelessWidget {
  final String? text1;
  final String? text2;
  final String? text3;
  const UnlockAurtaCard({super.key, this.text1, this.text2, this.text3});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.instance.black500,
        border: Border.all(color: AppColors.instance.white),
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            blurStyle: BlurStyle.normal,
            color: AppColors.instance.blue,
            offset: Offset(0, 0),
          ),
        ],
      ),
      padding: EdgeInsets.all(AppSize.width(value: 20)),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                  data: "UNLOCK",
                  fontSize: AppSize.width(value: 24),
                  color: AppColors.instance.white,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              spacing: AppSize.size.height * 0.01,
              children: [
                AppText(
                  data: text1 ?? "- PREMIUM GAMES",
                  fontSize: AppSize.width(value: 20),
                  color: AppColors.instance.white,
                ),
                AppText(
                  data: text2 ?? "- AI SELECTED ICE BREAKERS",
                  fontSize: AppSize.width(value: 20),
                  color: AppColors.instance.white,
                ),
                AppText(
                  data: text3 ?? "- BONUS TIME EXTENTIONS",
                  fontSize: AppSize.width(value: 20),
                  color: AppColors.instance.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
