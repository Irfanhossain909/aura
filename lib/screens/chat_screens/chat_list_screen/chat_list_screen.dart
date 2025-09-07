import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/routes/app_routes.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appbar_auth.dart';
import 'package:aura/widgets/app_images/app_image_circular.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: Column(
        children: [
          CustomAppBarAuth(
            logoUnderText: "MATCHES",
            isProgressShown: false,
            action: GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.instance.syncContactScreen);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.instance.btnBg,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: AppSize.width(value: 16),
                  vertical: AppSize.width(value: 8),
                ),
                child: AppText(
                  data: "RESTORE CHAT",
                  fontSize: AppSize.width(value: 18),
                  color: AppColors.instance.white,
                ),
              ),
            ),
          ),

          AppText(
            letterSpacing: 0.5,
            data: "MATCH ROOM",
            fontSize: AppSize.width(value: 18),
            fontWeight: FontWeight.w400,
            color: AppColors.instance.white,
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: .95,
                  crossAxisCount: 2,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ChatListItem(
                    onTap: () {
                      Get.toNamed(AppRoutes.instance.messageScreen);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChatListItem extends StatelessWidget {
  final Function()? onTap;
  const ChatListItem({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppSize.width(value: 14),
              horizontal: AppSize.width(value: 14),
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue, // Set the shadow color to blue
                        spreadRadius: 0.3, // Adjust the spread radius as needed
                        blurRadius: 5, // Set the blur radius
                        offset: Offset(0, 0), // Shadow position (centered)
                      ),
                    ],
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: 2,
                        color: AppColors.instance.white,
                      ),
                    ),
                    padding: EdgeInsets.all(3),
                    child: AppImageCircular(
                      width: 100,
                      height: 100,
                      path: AssetsIconsPath.instance.profileIcon,
                    ),
                  ),
                ),
                Gap(height: AppSize.size.height * 0.01),
                AppText(
                  data: "LEE",
                  maxLines: 1,
                  fontSize: AppSize.width(value: 18),
                  color: AppColors.instance.white,
                  fontWeight: FontWeight.w600,
                  letterSpacing: .3,
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.instance.greyMedium.withValues(alpha: .9),
                border: Border.all(color: Colors.green, width: 2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: AppText(
                data: "23 H",
                fontSize: AppSize.width(value: 12),
                fontWeight: FontWeight.w500,
                color: AppColors.instance.white,
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 10,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: AppColors.instance.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(size: 12, Icons.close),
            ),
          ),
        ],
      ),
    );
  }
}
