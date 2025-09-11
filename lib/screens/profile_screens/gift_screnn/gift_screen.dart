import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_button/app_button.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';

class GiftScreen extends StatelessWidget {
  const GiftScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: Column(
        children: [
          CustomAppBar(
            isDividerShow: false,
            logoUnderText: "",
            title: "",
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
            child: SingleChildScrollView(
              child: Column(
                spacing: AppSize.size.height * 0.03,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSize.size.width * 0.2,
                    ),
                    child: AppText(
                      textAlign: TextAlign.center,
                      data:
                          "ENHANCE YOUR AURA BY PURCHASING, BUNDLE, INCALL GAMES, AND MORE)",
                      fontSize: AppSize.width(value: 18),
                      color: AppColors.instance.white,
                    ),
                  ),
                  Row(
                    spacing: AppSize.width(value: 16),
                    children: [
                      GiftCardItem(text: "100", btnText: "0.99"),
                      GiftCardItem(btnText: "4,99", text: "550"),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
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
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSize.width(value: 16),
                          vertical: AppSize.width(value: 20),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AppImage(
                              width: AppSize.width(value: 28),
                              path: AssetsIconsPath.instance.currencyIc,
                            ),
                            SizedBox(height: AppSize.size.height * 0.01),
                            AppText(
                              data: "+1200",
                              fontSize: AppSize.width(value: 30),
                              color: AppColors.instance.white,
                            ),
                            SizedBox(height: AppSize.size.height * 0.015),
                            AppButton(
                              width: AppSize.size.width * 0.18,
                              height: AppSize.width(value: 28),
                              title: "\$8.99",
                              borderRadius: BorderRadius.circular(
                                AppSize.width(value: 30),
                              ),
                              filColor: AppColors.instance.blue,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: -10,
                        top: 6,
                        child: Transform.rotate(
                          angle: -0.7,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppSize.width(value: 10),
                              vertical: AppSize.width(value: 2),
                            ),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.blue, // Blue color for edges
                                  Colors
                                      .white, // Slight white tint in the middle
                                  Colors.blue, // Blue color for edges
                                ],
                                stops: [
                                  0.3,
                                  0.5,
                                  0.7,
                                ], // Defines where the colors start and end
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: AppText(
                              data: "POPULAR",
                              letterSpacing: 1,
                              fontSize: AppSize.width(value: 12),
                              color: AppColors.instance.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: AppSize.width(value: 16),
                    children: [
                      GiftCardItem(text: "2600", btnText: "17.99"),
                      GiftCardItem(btnText: "35,99", text: "5400"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GiftCardItem extends StatelessWidget {
  final String? text;
  final String? btnText;
  final double? paddingHorizon;
  const GiftCardItem({super.key, this.text, this.btnText, this.paddingHorizon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
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
        padding: EdgeInsets.symmetric(
          horizontal: AppSize.width(value: paddingHorizon ?? 50),
          vertical: AppSize.width(value: 20),
        ),
        child: Column(
          spacing: AppSize.size.height * 0.03,
          children: [
            AppImage(
              width: AppSize.width(value: 24),
              path: AssetsIconsPath.instance.currencyIc,
            ),
            AppText(
              data: "+${text ?? 0}",
              fontSize: AppSize.width(value: 26),
              color: AppColors.instance.white,
            ),
            AppButton(
              width: AppSize.size.width * 0.15,
              title:
                  "\$${btnText ?? 0}", // This might cause an issue with string interpolation
              height: AppSize.width(value: 28),
              borderRadius: BorderRadius.circular(AppSize.width(value: 30)),
              filColor: AppColors.instance.blue,
            ),
          ],
        ),
      ),
    );
  }
}
