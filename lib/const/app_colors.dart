

import 'dart:ui';

class AppColors {
  AppColors._privateCobtructor();
  static final AppColors _instance = AppColors._privateCobtructor();
  static AppColors get instance => _instance;


  //////=========================AppColors=========================
  final Color navyBlue = Color(0xff002C66);
  final Color navyBlue500 = Color(0xffF3F8FF);
  final Color grey = Color(0xffEBEBEB);
  final Color greyHalka = Color(0xffEBEBEB);
  final Color greyMedium = Color(0xff767676);
  final Color white = Color(0xffFFFFFF);
  final Color blackMediup = Color(0xff333333);
  final Color blackBold = Color(0xff1D1D1F);
  final Color black500 = Color(0xff272729);
  final Color black200 = Color(0xff9A9A9C);
  final Color black300 = Color(0xff0A0303);
  final Color black = Color(0xff000000);
  final Color offWhite = Color(0xff555656);
  final Color btnBg = Color(0xffFCFCFC).withValues(alpha: .2);




  //////=========================Blue=========================
  // final Color light = Color(0xffe7ebf1);
  // final Color lightHover = Color(0xffdbe1ea);
  // final Color lightActive = Color(0xffb5c2d4);
  // final Color normal = Color(0xff113975);
  // final Color normalHover = Color(0xff0f3369);
  // final Color normalActive = Color(0xff0e2e5e);
  // final Color dark = Color(0xff0d2b58);
  // final Color darkHover = Color(0xff0a2246);
  // final Color darkActive = Color(0xff081a35);
  // final Color darker = Color(0xff061429);

  
  
  //==============grediant========================

  // final Gradient customGradient = LinearGradient(
  //   colors: [
  //     Color(0xFFFFD858), // Start color
  //     Color(0xFFFFB953), // End color (transparent version of last)
  //     Color(0xFFFF954E), // Fully opaque last color on right
  //   ],
  //   stops: [0.3, 0.6, 1.0],
  //   begin: Alignment(0.00, 7),
  //   end: Alignment(1.00, 0.50), // End at left
  // );
  // final Gradient customGradient2 = LinearGradient(
  //   begin: Alignment(0.50, -0.00),
  //   end: Alignment(0.50, 1.00),
  //   colors: [Color(0xFFFEFED6), Color(0xFFFCAC43)],
  // );

  //////=========================Grey=========================
  // final Color grey_50    = Color(0xfffafafa);
  // final Color grey_100 = Color(0xffefefef);
  // final Color grey_200 = Color(0xffe7e7e7);
  // final Color grey_300 = Color(0xffdcdcdc);
  // final Color grey_400 = Color(0xffd5d5d5);
  // final Color grey_500 = Color(0xffcbcbcb);
  // final Color grey_600 = Color(0xffb9b9b9);
  // final Color grey_700 = Color(0xff909090);
  // final Color grey_800 = Color(0xff707070);
  // final Color grey_900 = Color(0xff555555);

  //////=========================black==============================

  // final Color black50 = Color(0xffe7e7e7);
  // final Color black100 = Color(0xffb6b6b6);
  // final Color black200 = Color(0xff929292);
  // final Color black300 = Color(0xff606060);
  // final Color black400 = Color(0xff414141);
  // final Color black500 = Color(0xff121212);
  // final Color black600 = Color(0xff101010);
  // final Color black700 = Color(0xff0d0d0d);
  // final Color black800 = Color(0xff0a0a0a);
  // final Color black900 = Color(0xff080808);

  /////========================white========================

  // final Color white50 = Color(0xfffdfdfd);
  // final Color white100 = Color(0xfff7f7f7);
  // final Color white200 = Color(0xfff4f4f4);
  // final Color white300 = Color(0xffeeeeee);
  // final Color white400 = Color(0xffebebeb);
  // final Color white500 = Color(0xffe6e6e6);
  // final Color white600 = Color(0xffd1d1d1);
  // final Color white700 = Color(0xffa3a3a3);
  // final Color white800 = Color(0xff7f7f7f);
  // final Color white900 = Color(0xff616161);

  ////=======================extra color============================

  final Color redLight1 = Color(0xffF57674);
  final Color red1 = Color(0xffFF4040);
  final Color red2 = Color(0xffD32F2F);
  final Color green1 = Color(0xff008000);
  final Color green2 = Color(0xff2E7D32);
  final Color hexzaGreen = Color(0xffC0D9C0);
  final Color yellow1 = Color(0xffFFC107);
  final Color yellow2 = Color(0xffFBC02D);
  final Color blue = Color(0xff25C6FF);
  // final Color blue2 = Color(0xff1976D2);
  final Color dropShadowNavColor = Color(0xff752277);
}
