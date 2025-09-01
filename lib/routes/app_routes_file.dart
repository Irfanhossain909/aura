import 'package:aura/routes/app_routes.dart';
import 'package:aura/routes/bindings/app_binding.dart';
import 'package:aura/screens/extentions_screens/about_me_screen/about_me_screen.dart';
import 'package:aura/screens/extentions_screens/dating_intensions_screen/dating_intensions_screen.dart';
import 'package:aura/screens/extentions_screens/ethnicity_screen/ethnicity_screen.dart';
import 'package:aura/screens/extentions_screens/gender_selection_screen/gender_selection_screen.dart';
import 'package:aura/screens/extentions_screens/politics_screen/politics_screen.dart';
import 'package:aura/screens/extentions_screens/zoodiac_prefereance_screen/zoodiac_prefereance_screen.dart';
import 'package:aura/screens/extentions_screens/im_interested_in_screen/im_interested_in_screen.dart';
import 'package:aura/screens/extentions_screens/member_prefference_screen/member_prefference_screen.dart';
import 'package:get/get.dart';

List<GetPage> appRootRoutesFile = <GetPage>[
  //   /////////////////  splash screen start
  // GetPage(
  //   name: AppRoutes.instance.initial,
  //   binding: SplashScreenBinding(),
  //   page: () => const SplashScreen(),
  //   transitionDuration: Duration(milliseconds: 800),
  //   opaque: false,
  // ),
  // GetPage(
  //   name: AppRoutes.instance.onBoardingScreen,
  //   page: () => const OnboadingScreen(),
  //   // binding: SplashScreenBinding(),
  //   // page: () => const SplashScreen(),
  //   // transitionDuration: Duration(milliseconds: 800),
  //   // opaque: false,
  // ),

  //////////=======================Auth screen===================
  //////////=======================Extentions screen===================
  GetPage(
    name: AppRoutes.instance.memberPrefferenceScreen,
    binding: AppBinding(),
    page: () => const MemberPrefferenceScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.imInterestedInScreen,
    binding: AppBinding(),
    page: () => const ImInterestedInScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.datingIntensionsScreen,
    binding: AppBinding(),
    page: () => const DatingIntensionsScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.ethnicityScreen,
    binding: AppBinding(),
    page: () => const EthnicityScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.zoodiacPrefereanceScreen,
    binding: AppBinding(),
    page: () => const ZoodiacPrefereanceScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.genderSelectionScreen,
    binding: AppBinding(),
    page: () => const GenderSelectionScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.politicsScreen,
    binding: AppBinding(),
    page: () => const PoliticsScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.aboutMeScreen,
    binding: AppBinding(),
    page: () => const AboutMeScreen(),
  ),
];
