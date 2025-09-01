import 'package:aura/const/app_colors.dart';
import 'package:flutter/material.dart';

// To set an image as scaffold background, use this approach in your Scaffold:
// Scaffold(
//   body: Container(
//     decoration: BoxDecoration(
//       image: DecorationImage(
//         image: AssetImage('assets/images/extention_bg.webp'),
//         fit: BoxFit.cover,
//       ),
//     ),
//     child: YourContent(),
//   ),
// )

ThemeData appThemeData = ThemeData.light(useMaterial3: true).copyWith(
  scaffoldBackgroundColor: Colors.white,
  dividerColor: AppColors.instance.greyMedium,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.instance.white,
    // surfaceTintColor: AppColors.instance.white200,
    surfaceTintColor: Colors.transparent,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: AppColors.instance.black),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: AppColors.instance.black),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: AppColors.instance.black),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: AppColors.instance.red2),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: AppColors.instance.red2),
    ),
  ),
  popupMenuTheme: PopupMenuThemeData(
    color: AppColors.instance.white,
    iconColor: AppColors.instance.black,
    shadowColor: AppColors.instance.black,
    surfaceTintColor: AppColors.instance.greyMedium,
    elevation: 0,
  ),
  buttonTheme: ButtonThemeData(
    hoverColor: Colors.transparent,
    highlightColor: Colors.transparent,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      overlayColor: WidgetStatePropertyAll(Colors.transparent),
      mouseCursor: WidgetStatePropertyAll(MouseCursor.defer),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      overlayColor: WidgetStatePropertyAll(Colors.transparent),
      mouseCursor: WidgetStatePropertyAll(MouseCursor.defer),
    ),
  ),
);
