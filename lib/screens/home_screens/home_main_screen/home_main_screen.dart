import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_home_bg_image.dart';
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
              TabBar(
                dividerColor: Colors.transparent,
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                indicator: const BoxDecoration(),
                labelStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                labelColor: Colors.white,
                unselectedLabelStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
                unselectedLabelColor: Colors.white,
                tabs: const [
                  Flexible(child: Tab(text: "LOCAL")),
                  Expanded(child: Tab(text: "SELECT CITY")),
                  Flexible(child: Tab(text: "EXPLORE")),
                ],
              ),

              Expanded(
                child: TabBarView(
                  children: [
                    Center(
                      child: AppText(
                        data: "Local",
                        color: AppColors.instance.white,
                      ),
                    ),
                    Center(child: AppText(data: "Select City")),
                    Center(child: AppText(data: "Explore")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
