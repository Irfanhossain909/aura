import 'package:aura/const/app_colors.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';

class ComunityGuidelineScreen extends StatelessWidget {
  const ComunityGuidelineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBgImage(
      body: Column(
        children: [
          CustomAppBar(
            action: SizedBox(),
            isDividerShow: false,
            logoUnderText: "Community guideline",
            title: "",
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  spacing: AppSize.size.height * 0.02,
                  children: [
                    CommunityRulsCard(
                      title: "RESPECTFUL COMMUNICATION",
                      description:
                          """We encourage positive and respectful offensive lanquage are not tolerated.""",
                    ),
                    CommunityRulsCard(
                      title: "SAFETY & PRIVACY",
                      description:
                          """Protect your personal information and respect other’s privacy. Do not share sensitive information publicly.""",
                    ),
                    CommunityRulsCard(
                      title: "HONESTY AND AUTHENTICITY",
                      description:
                          """Be truthful in your profile and interactions. Misleading others is against our guidelines""",
                    ),
                    CommunityRulsCard(
                      title: "REPORTING VIOLATIONS",
                      description:
                          """Report any violations of these guidelines to ensure a safe and positive community""",
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

class CommunityRulsCard extends StatelessWidget {
  final String? title;
  final String? description;
  const CommunityRulsCard({super.key, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppSize.size.height * 0.005,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: AppText(
            data: title ?? "RESPECTFUL COMMUNICATION",
            fontSize: AppSize.width(value: 24),
            color: AppColors.instance.blue,
          ),
        ),
        AppText(
          height: 1.5,
          textAlign: TextAlign.left,
          data: description ?? """No Description""",
          fontSize: AppSize.width(value: 16),
          color: AppColors.instance.white.withValues(alpha: .7),
        ),
        Container(
          width: double.infinity,
          height: 3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: AppColors.instance.white.withValues(alpha: .7),
          ),
        ),
      ],
    );
  }
}
