// import 'package:aura/const/app_colors.dart';
// import 'package:aura/screens/settings_screen/report_option_screen/controller/report_option_controller.dart';
// import 'package:aura/widgets/app_button/app_button.dart';
// import 'package:aura/widgets/text/app_text.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class ReportIssueDialog extends StatelessWidget {
//   final ReportOptionController controller;

//   const ReportIssueDialog({super.key, required this.controller});

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       backgroundColor: Colors.transparent,
//       child: Container(
//         width: double.infinity,
//         margin: const EdgeInsets.symmetric(horizontal: 20),
//         decoration: BoxDecoration(
//           color: AppColors.instance.black500,
//           borderRadius: BorderRadius.circular(20),
//           border: Border.all(color: AppColors.instance.blue, width: 1),
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             // Dialog content
//             Padding(
//               padding: const EdgeInsets.all(24),
//               child: Column(
//                 children: [
//                   // Title
//                   AppText(
//                     data: "REPORT AN ISSUE",
//                     color: AppColors.instance.blue,
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     textAlign: TextAlign.center,
//                   ),

//                   const SizedBox(height: 12),

//                   // Description
//                   AppText(
//                     data:
//                         "Let us know if you encountered a problem or had a concerning experience.",
//                     color: AppColors.instance.white,
//                     fontSize: 14,
//                     textAlign: TextAlign.center,
//                     maxLines: 2,
//                   ),

//                   const SizedBox(height: 20),

//                   // Divider
//                   Container(height: 1, color: AppColors.instance.white),

//                   const SizedBox(height: 20),

//                   // Report options
//                   ...controller.reportOptions.map((option) {
//                     return Padding(
//                       padding: const EdgeInsets.only(bottom: 16),
//                       child: _buildRadioOption(option),
//                     );
//                   }).toList(),

//                   const SizedBox(height: 24),

//                   // Next button
//                   SizedBox(
//                     width: double.infinity,
//                     child: AppButton(
//                       title: "NEXT",
//                       onTap: controller.onNextPressed,
//                       filColor: AppColors.instance.blue,
//                       titleColor: AppColors.instance.white,
//                       borderRadius: BorderRadius.circular(20),
//                       height: 48,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildRadioOption(String option) {
//     return GetBuilder<ReportOptionController>(
//       builder: (controller) {
//         final isSelected = controller.isSelected(option);

//         return GestureDetector(
//           onTap: () => controller.selectReportOption(option),
//           child: Row(
//             children: [
//               Container(
//                 width: 20,
//                 height: 20,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   border: Border.all(color: AppColors.instance.white, width: 2),
//                   color: isSelected
//                       ? AppColors.instance.blue
//                       : Colors.transparent,
//                 ),
//                 child: isSelected
//                     ? Center(
//                         child: Container(
//                           width: 8,
//                           height: 8,
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: AppColors.instance.white,
//                           ),
//                         ),
//                       )
//                     : null,
//               ),
//               const SizedBox(width: 12),
//               Expanded(
//                 child: AppText(
//                   data: option,
//                   color: AppColors.instance.white,
//                   fontSize: 14,
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
