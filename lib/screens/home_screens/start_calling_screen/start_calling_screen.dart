import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appbar_auth.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/app_image_circular.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/start_calling_controller.dart';

class StartCallingScreen extends StatelessWidget {
  const StartCallingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.width(value: 16)),
        child: Column(
          children: [
            CustomAppBarAuth(isProgressShown: false, logoUnderText: "LOCAl"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                AppImage(
                  height: AppSize.size.height * 0.15,
                  path: AssetsIconsPath.instance.personImage,
                ),
              ],
            ),
            Gap(height: AppSize.size.height * 0.07),
            AppImageCircular(
              width: AppSize.size.width * 0.6,
              path: AssetsIconsPath.instance.person2,
            ),
            Gap(height: AppSize.size.height * 0.02),
            AppText(
              data: "TRAVIS",
              fontSize: AppSize.width(value: 28),
              color: AppColors.instance.white,
            ),
            Gap(height: AppSize.size.height * 0.02),
            AppText(
              data: "23",
              fontSize: AppSize.width(value: 28),
              color: AppColors.instance.white,
            ),
            Gap(height: AppSize.size.height * 0.04),
            GetBuilder<StartCallingController>(
              init: StartCallingController(),
              builder: (controller) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AppText(
                      data: "5",
                      fontSize: AppSize.width(value: 32),
                      color: AppColors.instance.white,
                    ),
                    _MatchSwipeSwitchStart(),

                    SizedBox(),
                  ],
                );
              },
            ),
            Gap(height: AppSize.size.height * 0.04),
            AppImage(
              path: AssetsIconsPath.instance.closeIc,
              width: AppSize.width(value: 34),
            ),
          ],
        ),
      ),
    );
  }
}

class _MatchSwipeSwitchStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final StartCallingController controller =
        Get.find<StartCallingController>();

    final double height = AppSize.width(value: 44);
    final double width = AppSize.width(value: 200);
    final double knobSize = height - AppSize.width(value: 8);

    return Obx(() {
      final bool isActive = controller.isMatched.value;
      final double alignX = controller.knobAlignX.value;
      return GestureDetector(
        onTap: controller.toggleMatched,
        onHorizontalDragUpdate: (details) {
          controller.updateDrag(details.primaryDelta! / width * 2);
        },
        onHorizontalDragEnd: (_) => controller.onDragEnd(),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          width: width,
          height: height,
          padding: EdgeInsets.all(AppSize.width(value: 4)),
          decoration: BoxDecoration(
            color: isActive ? AppColors.instance.grey : AppColors.instance.blue,
            borderRadius: BorderRadius.circular(height),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: AppText(
                  fontSize: AppSize.width(value: 20),
                  data: isActive ? 'DISCONNECT' : 'CONNECT',
                  color: isActive
                      ? AppColors.instance.black
                      : AppColors.instance.white,
                ),
              ),
              Align(
                alignment: Alignment(alignX, 0),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  width: knobSize,
                  height: knobSize,
                  decoration: BoxDecoration(
                    color: AppColors.instance.white,
                    borderRadius: BorderRadius.circular(knobSize),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
