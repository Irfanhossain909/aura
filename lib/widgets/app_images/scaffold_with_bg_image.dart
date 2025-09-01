import 'package:flutter/material.dart';

class ScaffoldWithBgImage extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final String imagePath;
  final BoxFit fit;
  final Color? overlayColor;

  const ScaffoldWithBgImage({
    super.key,
    required this.body,
    this.appBar,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.imagePath = 'assets/images/extention_bg.webp',
    this.fit = BoxFit.cover,
    this.overlayColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imagePath), fit: fit),
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
