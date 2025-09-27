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
                  fontSize: AppSize.width(value: 16),
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

class ChatListItem extends StatefulWidget {
  final Function()? onTap;
  const ChatListItem({super.key, this.onTap});

  @override
  State<ChatListItem> createState() => _ChatListItemState();
}

class _ChatListItemState extends State<ChatListItem> {
  bool _showClose = false; // initially x icon hidden

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onLongPress: () {
        setState(() {
          _showClose = true; // show icon when long pressed
        });
      },
      child: Stack(
        children: [
          Center(
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
                          spreadRadius: 0.3,
                          blurRadius: 5,
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
          ),

          // time badge
          Positioned(
            right: 25,
            top: 10,
            child: CustomPaint(
              painter: DashedBorderPainter(),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.instance.greyMedium.withValues(alpha: .9),
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

          

          // close icon (show only if _showClose == true)
          if (_showClose)
            Positioned(
              left: 10,
              top: 10,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _showClose = false; // hide again on tap
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: AppColors.instance.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(size: 12, Icons.close),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class DashedBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double dashWidth;
  final double dashSpace;
  final double radius;

  DashedBorderPainter({
    this.color = Colors.green,
    this.strokeWidth = 2.0,
    this.dashWidth = 5.0,
    this.dashSpace = 3.0,
    this.radius = 30.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);

    final rrect = RRect.fromRectAndRadius(rect, Radius.circular(radius));
    final path = Path()..addRRect(rrect);

    _drawDashedPath(canvas, path, paint);
  }

  void _drawDashedPath(Canvas canvas, Path path, Paint paint) {
    for (final metric in path.computeMetrics()) {
      double distance = 0.0;
      while (distance < metric.length) {
        final next = distance + dashWidth;
        final extractPath = metric.extractPath(
          distance,
          next > metric.length ? metric.length : next,
        );
        canvas.drawPath(extractPath, paint);
        distance = next + dashSpace;
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

