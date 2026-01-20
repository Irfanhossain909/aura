import 'package:aura/const/app_colors.dart';
import 'package:aura/const/assets_icons_path.dart';
import 'package:aura/routes/app_routes.dart';
import 'package:aura/screens/chat_screens/chat_list_screen/chat_list_screen.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/utils/applog/gap.dart';
import 'package:aura/widgets/app_bar/custom_appber.dart';
import 'package:aura/widgets/app_images/app_image.dart';
import 'package:aura/widgets/app_images/app_image_circular.dart';
import 'package:aura/widgets/app_images/scaffold_with_bg_image.dart';
import 'package:aura/widgets/input_text/app_input_widget_two.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/message_controller.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final MessageController controller = Get.find<MessageController>();

    return ScaffoldWithBgImage(
      body: GetBuilder<MessageController>(
        init: MessageController(),
        builder: (controller) {
          return Column(
            children: [
              CustomAppBar(
                logoUnderText: "MESSAGE",
                action: SizedBox(),
                title: "TANVIR",
                isDividerShow: false,
                action2: Positioned(
                  right: 25,
                  top: 10,
                  child: CustomPaint(
                    painter: DashedBorderPainter(),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: AppColors.instance.greyMedium.withValues(
                          alpha: .9,
                        ),
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
                ),
                // action2: Container(
                //   padding: EdgeInsets.all(8),
                //   decoration: BoxDecoration(
                //     color: AppColors.instance.greyMedium.withValues(alpha: .9),
                //     border: Border.all(color: Colors.green, width: 2),
                //     borderRadius: BorderRadius.circular(30),
                //   ),
                //   child: AppText(
                //     data: "23 H",
                //     fontSize: AppSize.width(value: 12),
                //     fontWeight: FontWeight.w500,
                //     color: AppColors.instance.white,
                //   ),
                // ),
              ),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Container(
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
                                    color: Colors.blue,
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: Offset(0, 0),
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
                                  width: 88,
                                  height: 88,
                                  path: AssetsIconsPath.instance.profileIcon,
                                ),
                              ),
                            ),
                            Gap(height: AppSize.size.height * 0.01),
                            AppText(
                              data: "MATCHEDE",
                              maxLines: 1,
                              fontSize: AppSize.width(value: 18),
                              color: AppColors.instance.blue,
                              fontWeight: FontWeight.w400,
                              letterSpacing: .3,
                            ),
                            AppText(
                              data: "Today 11:00",
                              maxLines: 1,
                              fontSize: AppSize.width(value: 12),
                              color: AppColors.instance.white.withValues(
                                alpha: 0.6,
                              ),
                              fontWeight: FontWeight.w400,
                              letterSpacing: .3,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Obx(
                      () => SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          final item = controller.messages[index];
                          if (item.isSender) {
                            return _SenderBubble(text: item.text);
                          } else {
                            return _ReceiverBubble(text: item.text);
                          }
                        }, childCount: controller.messages.length),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(height: AppSize.width(value: 80)),
                    ),
                  ],
                ),
              ),
              SafeArea(
                top: false,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                    AppSize.width(value: 12),
                    AppSize.width(value: 8),
                    AppSize.width(value: 12),
                    AppSize.width(value: 12),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: AppInputWidgetTwo(
                          hintText: 'Type a message...',
                          controller: controller.inputController,
                          minLines: 1,
                          maxLines: 4,
                          textInputAction: TextInputAction.send,
                          onFieldSubmitted: (value) {
                            controller.sendMessage(value);
                            controller.inputController.clear();
                          },
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.send,
                              color: AppColors.instance.blue,
                            ),
                            onPressed: () {
                              final text = controller.inputController.text;
                              controller.sendMessage(text);
                              controller.inputController.clear();
                            },
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          style: TextStyle(
                            height: 1.4,
                            color: AppColors.instance.black,
                          ),
                          // borderRadius: 24,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: AppSize.width(value: 10),
                            horizontal: AppSize.width(value: 14),
                          ),
                        ),
                      ),
                      Gap(width: AppSize.width(value: 8)),
                      InkWell(
                        onTap: () {
                          Get.toNamed(AppRoutes.instance.reportOptionScreen);
                        },
                        child: AppImage(
                          path: AssetsIconsPath.instance.warningIc,
                          width: AppSize.width(value: 28),
                          height: AppSize.width(value: 28),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _SenderBubble extends StatelessWidget {
  final String text;
  const _SenderBubble({required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: AppSize.size.width * 0.6,
        margin: EdgeInsets.symmetric(
          horizontal: AppSize.width(value: 16),
          vertical: AppSize.width(value: 8),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: AppSize.width(value: 14),
          vertical: AppSize.width(value: 10),
        ),
        decoration: BoxDecoration(
          color: AppColors.instance.blue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(4),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AppText(
              data: text,
              color: AppColors.instance.white,
              fontSize: AppSize.width(value: 14),
            ),
            Gap(height: 8),
            Align(
              alignment: Alignment.bottomRight,
              child: AppText(
                data: "02:00",
                color: AppColors.instance.white,
                fontSize: AppSize.width(value: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ReceiverBubble extends StatelessWidget {
  final String text;
  const _ReceiverBubble({required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: AppSize.size.width * 0.6,
        margin: EdgeInsets.symmetric(
          horizontal: AppSize.width(value: 16),
          vertical: AppSize.width(value: 8),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: AppSize.width(value: 14),
          vertical: AppSize.width(value: 10),
        ),
        decoration: BoxDecoration(
          color: AppColors.instance.white.withValues(alpha: .9),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              data: text,
              color: AppColors.instance.black,
              fontSize: AppSize.width(value: 14),
            ),
            Gap(height: 8),
            Align(
              alignment: Alignment.bottomRight,
              child: AppText(
                data: "02:00",
                color: AppColors.instance.black,
                fontSize: AppSize.width(value: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
