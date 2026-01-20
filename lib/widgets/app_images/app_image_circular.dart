import 'dart:developer';
import 'dart:io';
import 'package:aura/const/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppImageCircular extends StatelessWidget {
  const AppImageCircular({
    super.key,
    this.color = Colors.red,
    this.fit = BoxFit.cover,
    this.height,
    this.path,
    this.url,
    this.width,
    this.filePath,
    this.borderRadius = 100,
  });
  final String? path;
  final String? filePath;
  final String? url;
  final BoxFit? fit;
  final double? width;
  final double? height;
  final double borderRadius;
  final Color color;

  @override
  Widget build(BuildContext context) {
    // >>>>>>>>>>>>>>>>>>>>>> Check for file image first <<<<<<<<<<<<<<<<<<<<<<
    if (filePath != null) {
      // If file path is provided, check if the file exists
      return ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Image.file(
          File(filePath!),
          width: width,
          height: height,
          fit: fit,
          errorBuilder: (context, error, stackTrace) {
            log("Error loading file image: $error");
            return ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: Container(
                width: width,
                height: height,
                color: AppColors.instance.navyBlue500,
              ),
            );
          },
        ),
      );
    }

    // >>>>>>>>>>>>>>>>>>>>>> Check for network image (URL) <<<<<<<<<<<<<<<<<<<<<<
    if (url != null && url!.isNotEmpty) {
      String imageUrl = url!;
      if (!(imageUrl.startsWith("http://") ||
          imageUrl.startsWith("https://"))) {
        imageUrl = "https://$imageUrl"; // Add 'https' if not present
      }

      return ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Image.network(
          imageUrl,
          width: width,
          height: height,
          fit: fit,
          errorBuilder: (context, error, stackTrace) {
            log("Error loading network image: $error");
            return ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: Container(
                width: width,
                height: height,
                color: AppColors.instance.navyBlue500,
              ),
            );
          },
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }
            return ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: Container(
                width: width,
                height: height,
                color: AppColors.instance.navyBlue500,
                child: const CupertinoActivityIndicator(color: Colors.black),
              ),
            );
          },
        ),
      );
    }

    // >>>>>>>>>>>>>>>>>>>>>> Check for local asset image <<<<<<<<<<<<<<<<<<<<<<
    if (path != null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Image.asset(
          path!,
          width: width,
          height: height,
          fit: fit,
          errorBuilder: (context, error, stackTrace) {
            log("Error loading asset image: $error");
            return ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: Container(
                width: width,
                height: height,
                color: AppColors.instance.navyBlue,
              ),
            );
          },
        ),
      );
    }

    // >>>>>>>>>>>>>>>>>>>>>> Default widget when no image source is provided <<<<<<<<<<<<<<<<<<<<<<
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(width: width, height: height, color: color),
    );
  }
}


