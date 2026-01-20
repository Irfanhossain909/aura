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
  final Color black200 = Color(0xff9A9A9C);
  final Color black500 = Color(0xff424242);
  final Color black300 = Color(0xff0A0303);
  final Color black = Color(0xff000000);
  final Color offWhite = Color(0xff555656);
  final Color navColor = Color(0xff3F4042);
  final Color btnBg = Color(0xffFCFCFC).withValues(alpha: .2);

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
