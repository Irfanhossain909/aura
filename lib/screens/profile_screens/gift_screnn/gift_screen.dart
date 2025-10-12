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
import 'package:google_fonts/google_fonts.dart';

class GiftScreen extends StatelessWidget {
  const GiftScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: Column(
        children: [
          CustomAppBar(
            isImageTitle: true,
            imagePath: AssetsIconsPath.instance.appBarImg,
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
            padding: EdgeInsets.symmetric(
              vertical: AppSize.width(value: 10),
              horizontal: AppSize.width(value: 16),
            ),
            child: SingleChildScrollView(
              child: Column(
                spacing: AppSize.size.height * 0.03,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: AppText(
                      textAlign: TextAlign.center,
                      data:
                          "ENHANCE YOUR AURA BY PURCHASING, BUNDLE, INCALL GAMES, AND MORE)",
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        color: AppColors.instance.white,
                      ),
                    ),
                  ),
                  Row(
                    spacing: AppSize.width(value: 16),
                    children: [
                      GiftCardItem(
                        isStartedShows: true,
                        text: "100",
                        btnText: "0.99",
                      ),
                      GiftCardItem(btnText: "4,99", text: "550"),
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Container(
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
                                width: AppSize.width(value: 72),
                                path: AssetsIconsPath.instance.currencyIc,
                              ),
                              SizedBox(height: AppSize.size.height * 0.01),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AppButton(
                                    width: AppSize.width(value: 86),
                                    height: AppSize.width(value: 33),
                                    title: "\$8.99",
                                    borderRadius: BorderRadius.circular(
                                      AppSize.width(value: 30),
                                    ),
                                    filColor: AppColors.instance.blue,
                                  ),
                                  Gap(width: 10),
                                  AppText(
                                    data: "+1200",
                                    fontSize: AppSize.width(value: 30),
                                    color: AppColors.instance.white,
                                  ),
                                  SizedBox(),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: -20,
                        right: -20,
                        child: AppImage(
                          width: 167,

                          path: AssetsIconsPath.instance.offerCard,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: AppSize.width(value: 16),
                    children: [
                      GiftCardItem(
                        isBestDeal: true,
                        text: "2600",
                        btnText: "17.99",
                      ),
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
  final bool isStartedShows;
  final bool isBestDeal;
  const GiftCardItem({
    super.key,
    this.text,
    this.btnText,
    this.paddingHorizon,
    this.isStartedShows = false,
    this.isBestDeal = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
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
                spacing: AppSize.size.height * 0.02,
                children: [
                  AppImage(
                    width: AppSize.width(value: 34),
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
                    borderRadius: BorderRadius.circular(
                      AppSize.width(value: 30),
                    ),
                    filColor: AppColors.instance.blue,
                  ),
                ],
              ),
            ),
          ),
          if (isStartedShows)
            Positioned(
              top: -12,
              left: -80,
              child: AppImage(
                path: AssetsIconsPath.instance.starterBundle,
                width: AppSize.width(value: 200),
              ),
            ),
          if (isBestDeal)
            Positioned(
              top: -24,
              right: -80,
              child: AppImage(
                path: AssetsIconsPath.instance.bestDeal,
                width: AppSize.width(value: 200),
              ),
            ),
        ],
      ),
    );
  }
}
