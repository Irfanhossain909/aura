import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_button/app_button.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';

class UnlimitedRelocation extends StatelessWidget {
  const UnlimitedRelocation({super.key});

  @override
  Widget build(context) {
    return ScaffoldWithBgImage(
      body: Column(
        children: [
          CustomAppBar(
            isDividerShow: false,
            logoUnderText: "",
            title: "UNLIMITED RELOCATION",
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
            padding: EdgeInsets.symmetric(horizontal: AppSize.width(value: 16)),
            child: Column(
              spacing: AppSize.size.height * 0.02,
              children: [
                AppText(
                  textAlign: TextAlign.center,
                  data:
                      "BE ABLE TO TALK TO PEOPLE IN WHICHEVER CITY YOU CHOOSE TO GET BETTER MATCHES WHO TRULY ALIGN WITH YOUR AURA.",
                  fontSize: AppSize.width(value: 16),
                  color: AppColors.instance.white,
                ),
                RelocationCard(
                  text: "UNLOCK FOR 1 HOURS",
                  textbtnText: "100 AP",
                ),
                RelocationCard(
                  text: "UNLOCK FOR 3 HOURS",
                  textbtnText: "250 AP",
                ),
                RelocationCard(
                  text: "UNLOCK FOR 24 HOURS",
                  textbtnText: "1900 AP",
                ),
                RelocationCard(
                  text: "UNLOCK FOR 72 HOURS",
                  textbtnText: "5000 AP",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RelocationCard extends StatelessWidget {
  final String? text;
  final String? textbtnText;
  const RelocationCard({super.key, this.text, this.textbtnText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.instance.blue),
        color: AppColors.instance.black.withValues(alpha: 0.8),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppSize.size.width * 0.05,
        vertical: AppSize.size.height * 0.02,
      ),
      child: Column(
        spacing: AppSize.size.height * 0.01,
        children: [
          AppText(
            color: AppColors.instance.white,
            textAlign: TextAlign.center,
            fontSize: AppSize.width(value: 22),
            height: 1.4,
            letterSpacing: 0.5,
            data: text ?? "UNLOCK FOR 1 HOURS",
          ),
          AppButton(
            width: AppSize.size.width * 0.2,
            height: AppSize.size.height * 0.03,
            filColor: AppColors.instance.blue,
            borderRadius: BorderRadius.circular(16),
            title: "100 AP",
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
