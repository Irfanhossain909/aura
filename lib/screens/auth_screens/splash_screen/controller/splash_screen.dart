import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/screens/auth_screens/splash_screen/controller/splash_controller.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    AppSize.size = size;
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (controller) {
        return ScaffoldWithBgImage(
          body: Obx(
            () => Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                child: AnimatedOpacity(
                  duration: Duration(seconds: 2),
                  opacity: controller.animation2.value,
                  child: AnimatedScale(
                    scale: controller.animation.value,
                    duration: Duration(seconds: 2),
                    curve: Curves.easeOutExpo,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        AppImage(
                          path: AssetsIconsPath.instance.circleBg,
                          // width: AppSize.size.width * 0.55,
                          // height: AppSize.size.height * 0.05,
                        ),
                        Center(
                          child: AppImage(
                            path: AssetsIconsPath.instance.auraIcon,
                            width: AppSize.size.width * 0.46,
                            // height: AppSize.size.width * 0.22,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
