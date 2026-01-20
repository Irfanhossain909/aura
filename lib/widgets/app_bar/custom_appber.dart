import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class CustomAppBar extends StatelessWidget {
  final Widget? action;
  final Widget? action2;
  final double? fontSize;
  final String? logoUnderText;
  final String? title;
  final bool isDividerShow;
  final bool isLeadingShow;

  // 🔹 New parameters
  final bool isImageTitle;
  final String? imagePath;

  const CustomAppBar({
    super.key,
    this.isDividerShow = true,
    this.isLeadingShow = true,
    this.action,
    this.action2,
    this.logoUnderText,
    this.title,
    this.fontSize,
    this.isImageTitle = false, // default false
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          // First AppBar section
          SafeArea(
            bottom: false,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSize.width(value: 16),
                vertical: AppSize.width(value: 8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Leading section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppImage(
                        path: AssetsIconsPath.instance.auraIcon,
                        height: AppSize.width(value: 17),
                      ),
                      const SizedBox(height: 2),
                      AppText(
                        data: logoUnderText ?? "Profile",
                        fontSize: AppSize.width(value: 16),
                        fontWeight: FontWeight.w400,
                        color: AppColors.instance.blue,
                      ),
                    ],
                  ),
                  // Actions section
                  action ??
                      AppImage(
                        path: AssetsIconsPath.instance.icSetting,
                        width: AppSize.width(value: 24),
                        height: AppSize.width(value: 24),
                      ),
                ],
              ),
            ),
          ),

          // Second AppBar section
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSize.width(value: 16),
              vertical: AppSize.width(value: 8),
            ),
            child: Row(
              children: [
                // Back button
                isLeadingShow
                    ? GestureDetector(
                        onTap: () => Get.back(),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: AppColors.instance.white,
                          size: AppSize.width(value: 24),
                        ),
                      )
                    : const SizedBox(),

                // Title or Image (Center)
                Expanded(
                  child: Center(
                    child: isImageTitle
                        ? AppImage(
                            path:
                                imagePath ?? AssetsIconsPath.instance.auraIcon,
                            width: 100,
                            height: AppSize.width(value: 55),
                          )
                        : AppText(
                            data: title ?? "MEMBER PREFERENCE",
                            fontSize: AppSize.width(value: fontSize ?? 28.0),
                            fontWeight: FontWeight.w400,
                            color: AppColors.instance.white,
                          ),
                  ),
                ),

                // Action2 (optional)
                SizedBox(child: action2),
              ],
            ),
          ),

          // Divider
          isDividerShow
              ? Divider(color: AppColors.instance.white)
              : const SizedBox(),
        ],
      ),
    );
  }
}

// import 'package:aura/const/app_colors.dart';
// import 'package:aura/const/assets_icons_path.dart';
// import 'package:aura/utils/applog/app_size.dart';
// import 'package:aura/widgets/app_images/app_image.dart';
// import 'package:aura/widgets/text/app_text.dart';
// import 'package:flutter/material.dart';
// import 'package:get/route_manager.dart';

// class CustomAppBar extends StatelessWidget {
//   final Widget? action;
//   final Widget? action2;
//   final double? fontSize;
//   final String? logoUnderText;
//   final String? title;
//   final bool isDividerShow;
//   final bool isLeadingShow;
//   const CustomAppBar({
//     super.key,
//     this.isDividerShow = true,
//     this.isLeadingShow = true,
//     this.action,
//     this.action2,
//     this.logoUnderText,
//     this.title,
//     this.fontSize,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.transparent,
//       child: Column(
//         children: [
//           // First AppBar section
//           SafeArea(
//             bottom: false,
//             child: Padding(
//               padding: EdgeInsets.symmetric(
//                 horizontal: AppSize.width(value: 16),
//                 vertical: AppSize.width(value: 8),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   // Leading section
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       AppImage(
//                         path: AssetsIconsPath.instance.auraIcon,
//                         height: AppSize.width(value: 17),
//                       ),
//                       const SizedBox(height: 2),
//                       AppText(
//                         data: logoUnderText ?? "Profile",
//                         fontSize: AppSize.width(value: 16),
//                         fontWeight: FontWeight.w400,
//                         color: AppColors.instance.blue,
//                       ),
//                     ],
//                   ),
//                   // Actions section
//                   action ??
//                       AppImage(
//                         path: AssetsIconsPath.instance.icSetting,
//                         width: AppSize.width(value: 24),
//                         height: AppSize.width(value: 24),
//                       ),
//                 ],
//               ),
//             ),
//           ),

//           // Second AppBar section
//           Padding(
//             padding: EdgeInsets.symmetric(
//               horizontal: AppSize.width(value: 16),
//               vertical: AppSize.width(value: 8),
//             ),
//             child: Row(
//               children: [
//                 // Back button
//                 isLeadingShow
//                     ? GestureDetector(
//                         onTap: () => Get.back(),
//                         child: Icon(
//                           Icons.arrow_back_ios_new,
//                           color: AppColors.instance.white,
//                           size: AppSize.width(value: 24),
//                         ),
//                       )
//                     : SizedBox(),

//                 // Title
//                 Expanded(
//                   child: Center(
//                     child: AppText(
//                       data: title ?? "MEMBER PREFERENCE",
//                       fontSize: AppSize.width(value: fontSize ?? 24.0),
//                       fontWeight: FontWeight.w400,
//                       color: AppColors.instance.white,
//                     ),
//                   ),
//                 ),

//                 // Invisible spacer to balance the back button
//                 SizedBox(
//                   child: action2,
//                   // width: AppSize.width(value: 24)
//                 ),
//               ],
//             ),
//           ),
//           isDividerShow ? Divider(color: AppColors.instance.white) : SizedBox(),
//         ],
//       ),
//     );
//   }
// }
