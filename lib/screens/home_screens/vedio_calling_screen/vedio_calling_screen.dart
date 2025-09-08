import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/scaffold_with_home_bg_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/vedio_call_controller.dart';

class VedioCallingScreen extends StatelessWidget {
  const VedioCallingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithHomeBgImage(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      AppImage(
                        path: AssetsIconsPath.instance.warningIc,
                        width: AppSize.width(value: 30),
                      ),
                      Gap(height: AppSize.width(value: 16)),
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColors.instance.red1,
                        ),
                        child: Icon(
                          Icons.close,
                          color: AppColors.instance.white,
                        ),
                      ),
                    ],
                  ),
                  AppImage(
                    height: AppSize.size.height * 0.15,
                    path: AssetsIconsPath.instance.personImage,
                  ),
                ],
              ),
              Gap(height: AppSize.width(value: 16)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Column(
                    children: [
                      AppImage(
                        path: AssetsIconsPath.instance.loveCard,
                        width: AppSize.width(value: 52),
                      ),
                      AppImage(
                        path: AssetsIconsPath.instance.auraCard,
                        width: AppSize.width(value: 52),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(),
                  _MatchSwipeSwitch(),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColors.instance.white,
                    ),
                    child: AppText(data: "60+"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MatchSwipeSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final VedioCallController controller = Get.find<VedioCallController>();

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
            color: isActive
                ? AppColors.instance.green1
                : AppColors.instance.blue,
            borderRadius: BorderRadius.circular(height),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: AppText(
                  data: isActive ? 'Matched' : 'Match',
                  color: AppColors.instance.white,
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
