import 'package:aura/const/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData appThemeData = ThemeData.light(useMaterial3: true).copyWith(
  scaffoldBackgroundColor: Colors.white,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
  ),
  bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.transparent),
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
