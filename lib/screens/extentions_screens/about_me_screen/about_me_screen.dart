import 'package:aura/const/app_colors.dart';
import 'package:aura/screens/extentions_screens/about_me_screen/controller/about_me_controller.dart';
import 'package:aura/screens/extentions_screens/about_me_screen/widget/height_selector_widget.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_button/aura_button.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: GetBuilder<AboutMeController>(
        init: AboutMeController(),
        builder: (controller) {
          return Column(
            children: [
              CustomAppBar(
                action: SizedBox(),
                logoUnderText: "height preference",
                title: "height preference",
              ),

              Builder(
                builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        HeightSelectorWidget(
                          label: "Min Height",
                          selectedValue: controller.selectedMinHeight.value,
                          onIncrement: () => controller.incrementMinHeight(),
                          onDecrement: () => controller.decrementMinHeight(),
                        ),

                        SizedBox(height: 16),

                        HeightSelectorWidget(
                          label: "Max Height",
                          selectedValue: controller.selectedMaxHeight.value,
                          onIncrement: () => controller.incrementMaxHeight(),
                          onDecrement: () => controller.decrementMaxHeight(),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSize.width(value: 120),
                            vertical: AppSize.width(value: 100),
                          ),
                          child: AuraButton(
                            onTap: () {
                              // Get.toNamed(AppRoutes.instance.verifyCodeScreen);
                            },
                            filColor: AppColors.instance.blue,
                            textColor: AppColors.instance.white,
                            text: "DONE",
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
