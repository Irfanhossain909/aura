import 'package:aura/utils/applog/app_print.dart';
import 'package:flutter/material.dart';

class ScaffoldWithBgImageForAuth extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final String imagePath;
  final BoxFit fit;
  final Color? overlayColor;

  const ScaffoldWithBgImageForAuth({
    super.key,
    required this.body,
    this.appBar,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.imagePath = 'assets/images/auth_bg.webp',
    this.fit = BoxFit.cover,
    this.overlayColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: fit,
            onError: (exception, stackTrace) {
              AppPrint.appError('Error loading background image: $exception');
            },
          ),
        ),
        child: overlayColor != null
            ? Container(color: overlayColor, child: body)
            : body,
      ),
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
