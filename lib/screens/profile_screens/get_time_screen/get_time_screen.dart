import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';

class GetTimeScreen extends StatelessWidget {
  const GetTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: Column(
        children: [
          CustomAppBar(
            isDividerShow: false,
            logoUnderText: "",
            title: "GET TIME",
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
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSize.width(value: 16),
              ),
              child: SingleChildScrollView(
                child: Column(
                  // spacing: AppSize.size.height * 0.02,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSize.width(value: 16),
                      ),
                      child: AppText(
                        textAlign: TextAlign.center,
                        data:
                            "BUY MORE TIME SO YOU CAN EXTEND YOUR CALLS LONGER. (CALL MAX OUT AT 5 MINUTES LONG)",
                        fontSize: 16,
                        color: AppColors.instance.white,
                      ),
                    ),
                    Row(
                      spacing: AppSize.width(value: 12),
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: GetTimeCard(text: "5", btnText: "100"),
                        ),
                        Expanded(
                          child: GetTimeCard(text: "10", btnText: "150"),
                        ),
                      ],
                    ),
                    Row(
                      spacing: AppSize.width(value: 12),
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: GetTimeCard(text: "15", btnText: "200"),
                        ),
                        Expanded(
                          child: GetTimeCard(text: "20", btnText: "250"),
                        ),
                      ],
                    ),
                    Row(
                      spacing: AppSize.width(value: 12),
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: GetTimeCard(text: "25", btnText: "300"),
                        ),
                        Expanded(
                          child: GetTimeCard(text: "30", btnText: "350"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GetTimeCard extends StatelessWidget {
  final String? text;
  final String? btnText;
  final Function()? onTap;
  const GetTimeCard({super.key, this.text, this.onTap, this.btnText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        // border: Border.all(color: AppColors.instance.white),
      ),
      padding: EdgeInsets.all(AppSize.width(value: 16)),
      child: Column(
        children: [
          Stack(
            children: [
              AppImage(
                path: AssetsIconsPath.instance.circlePro,

                width: AppSize.size.width * 0.35,
              ),
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Center(
                  child: AppText(
                    color: AppColors.instance.white,
                    textAlign: TextAlign.center,
                    data: "+${text ?? 0} MIN",
                    fontSize: AppSize.width(value: 34),
                  ),
                ),
              ),
            ],
          ),
          Gap(height: AppSize.size.height * 0.01),
          InkWell(
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.instance.blue,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: AppSize.width(value: 16),
                vertical: AppSize.width(value: 4),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppText(
                    data: "BUY FOR ${btnText ?? 0}",
                    fontSize: AppSize.width(value: 16),
                    color: AppColors.instance.white,
                  ),
                  Gap(width: AppSize.width(value: 12)),
                  AppImage(
                    width: AppSize.width(value: 12),
                    path: AssetsIconsPath.instance.currencyIc,
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
