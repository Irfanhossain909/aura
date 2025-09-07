import 'package:aura/const/app_colors.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/app_row_item_with_checkbox/app_row_item_with_divider/app_row_item_with_divider.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';

class PrefrenceScreen extends StatelessWidget {
  const PrefrenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: Column(
        children: [
          CustomAppBar(
            isDividerShow: false,
            action: SizedBox(),
            title: "SEFTY",
            logoUnderText: "PROFILE",
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    RowItemWithDivider(
                      text: "BLOCKED LIST",
                      isDividerShow: false,
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    RowItemWithDivider(
                      text: "COMMUNITY GUIDELINES",
                      isDividerShow: false,
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    Container(
                      width: double.infinity,
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: AppColors.instance.hexzaGreen,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppSize.size.height * 0.01,
                      ),
                      child: AppText(
                        data: "PHONE & EMAIL",
                        fontSize: AppSize.width(value: 24),
                        color: AppColors.instance.white,
                      ),
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: AppSize.width(value: 12),
                      children: [
                        AppText(
                          data: "(###) ###-###",
                          fontSize: AppSize.width(value: 22),
                          fontWeight: FontWeight.w600,
                          color: AppColors.instance.white,
                        ),
                        AppText(
                          data: "EDIT",
                          fontSize: AppSize.width(value: 18),
                          fontWeight: FontWeight.w500,
                          color: AppColors.instance.blue,
                        ),
                      ],
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: AppSize.width(value: 12),
                      children: [
                        AppText(
                          data: "test@email.com",
                          fontSize: AppSize.width(value: 22),
                          fontWeight: FontWeight.w600,
                          color: AppColors.instance.white,
                        ),
                        AppText(
                          data: "EDIT",
                          fontSize: AppSize.width(value: 18),
                          fontWeight: FontWeight.w500,
                          color: AppColors.instance.blue,
                        ),
                      ],
                    ),

                    SizedBox(height: AppSize.size.height * 0.01),
                    Container(
                      width: double.infinity,
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: AppColors.instance.hexzaGreen,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppSize.size.height * 0.01,
                      ),
                      child: AppText(
                        data: "SUBSCRIPTION",
                        fontSize: AppSize.width(value: 24),
                        color: AppColors.instance.white,
                      ),
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    RowItemWithDivider(
                      text: "GET AURA +",
                      isDividerShow: false,
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    RowItemWithDivider(
                      text: "RESTORE AURA +",
                      isDividerShow: false,
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    RowItemWithDivider(
                      text: "CANCEL AURA +",
                      isDividerShow: false,
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    Container(
                      width: double.infinity,
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: AppColors.instance.hexzaGreen,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppSize.size.height * 0.01,
                      ),
                      child: AppText(
                        data: "NOTIFICATION",
                        fontSize: AppSize.width(value: 24),
                        color: AppColors.instance.white,
                      ),
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    RowItemWithDivider(
                      text: "PUSH NOTIFICATION",
                      isDividerShow: false,
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    RowItemWithDivider(text: "E-MAIL", isDividerShow: false),
                    SizedBox(height: AppSize.size.height * 0.01),
                    Container(
                      width: double.infinity,
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: AppColors.instance.hexzaGreen,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppSize.size.height * 0.01,
                      ),
                      child: AppText(
                        data: "LANGUAGE & REGION",
                        fontSize: AppSize.width(value: 24),
                        color: AppColors.instance.white,
                      ),
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    RowItemWithDivider(text: "LANGUAGE", isDividerShow: false),
                    SizedBox(height: AppSize.size.height * 0.01),
                    RowItemWithDivider(
                      text: "MEASUREMENT UNIT",
                      isDividerShow: false,
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    Container(
                      width: double.infinity,
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: AppColors.instance.hexzaGreen,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppSize.size.height * 0.01,
                      ),
                      child: AppText(
                        data: "LEGAL",
                        fontSize: AppSize.width(value: 24),
                        color: AppColors.instance.white,
                      ),
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    RowItemWithDivider(
                      text: "PRIVACY POLICY",
                      isDividerShow: false,
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    RowItemWithDivider(
                      text: "TERMS OF SERVICE",
                      isDividerShow: false,
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    RowItemWithDivider(
                      text: "YOUR PRIVACY CHOICES",
                      isDividerShow: false,
                    ),
                    SizedBox(height: AppSize.size.height * 0.01),
                    RowItemWithDivider(
                      text: "DOWNLOAD MY DATA",
                      isDividerShow: false,
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
