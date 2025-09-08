import 'package:flutter/material.dart';

class ScaffoldWithHomeBgImage extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final String imagePath;
  final BoxFit fit;
  final Color? overlayColor;

  const ScaffoldWithHomeBgImage({
    super.key,
    required this.body,
    this.appBar,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.imagePath = 'assets/images/home_img.webp',
    this.fit = BoxFit.cover,
    this.overlayColor,
  });

  @override
  Widget build(BuildContext context) {
    // Get the full screen size
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBar,
      // Optional: Extend the body behind the app bar for full-screen effect
      extendBodyBehindAppBar: overlayColor == null, // Only extend if no overlay
      body: SizedBox.expand(
        child: Container(
          width: screenSize.width,
          height: screenSize.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: fit,
              // Apply overlay color directly to the image if provided
              colorFilter: overlayColor != null
                  ? ColorFilter.mode(
                      overlayColor!.withOpacity(
                        0.5,
                      ), // Adjust opacity as needed
                      BlendMode.darken,
                    )
                  : null,
            ),
          ),
          child: body,
        ),
      ),
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}

// import 'package:flutter/material.dart';

// class ScaffoldWithBgImage extends StatelessWidget {
//   final Widget body;
//   final PreferredSizeWidget? appBar;
//   final Widget? floatingActionButton;
//   final Widget? bottomNavigationBar;
//   final String imagePath;
//   final BoxFit fit;
//   final Color? overlayColor;

//   const ScaffoldWithBgImage({
//     super.key,
//     required this.body,
//     this.appBar,
//     this.floatingActionButton,
//     this.bottomNavigationBar,
//     this.imagePath = 'assets/images/extention_bg.webp',
//     this.fit = BoxFit.cover,
//     this.overlayColor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: appBar,
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(image: AssetImage(imagePath), fit: fit),
//         ),
//         child: overlayColor != null
//             ? Container(color: overlayColor, child: body)
//             : body,
//       ),
//       floatingActionButton: floatingActionButton,
//       bottomNavigationBar: bottomNavigationBar,
//     );
//   }
// }
