import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_home_bg_image.dart';
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
              
            ],
          ),
        ),
      ),
    );
  }
}
