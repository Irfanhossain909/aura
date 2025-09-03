import 'package:aura/routes/app_routes.dart';
import 'package:aura/routes/bindings/app_binding.dart';
import 'package:aura/routes/bindings/auth_binding.dart';
import 'package:aura/screens/auth_screens/id_type_select_screen/id_type_select_screen.dart';
import 'package:aura/screens/auth_screens/login_screen/login_screen.dart';
import 'package:aura/screens/auth_screens/select_profile_img/select_profile_img.dart';
import 'package:aura/screens/auth_screens/signup_screen/signup_screen.dart';
import 'package:aura/screens/auth_screens/upload_id_screen/upload_id_screen.dart';
import 'package:aura/screens/auth_screens/verify_code_screen/verify_code_screen.dart';
import 'package:aura/screens/auth_screens/verify_phone_screen/verify_prone_screen.dart';
import 'package:aura/screens/extentions_screens/about_me_screen/about_me_screen.dart';
import 'package:aura/screens/extentions_screens/dating_intensions_screen/dating_intensions_screen.dart';
import 'package:aura/screens/extentions_screens/ethnicity_screen/ethnicity_screen.dart';
import 'package:aura/screens/extentions_screens/gender_selection_screen/gender_selection_screen.dart';
import 'package:aura/screens/extentions_screens/education_level_screen/education_level_screen.dart';
import 'package:aura/screens/extentions_screens/politics_screen/politics_screen.dart';
import 'package:aura/screens/extentions_screens/zoodiac_prefereance_screen/zoodiac_prefereance_screen.dart';
import 'package:aura/screens/extentions_screens/im_interested_in_screen/im_interested_in_screen.dart';
import 'package:aura/screens/extentions_screens/member_prefference_screen/member_prefference_screen.dart';
import 'package:aura/screens/auth_screens/user_waiting_screen/user_waiting_screen.dart';
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
  GetPage(
    name: AppRoutes.instance.signUpScreen,
    binding: AuthBinding(),
    page: () => const SignupScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.loginScreen,
    binding: AuthBinding(),
    page: () => const LoginScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.verifyPhoneScreen,
    binding: AuthBinding(),
    page: () => const VerifyProneScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.verifyCodeScreen,
    binding: AuthBinding(),
    page: () => const VerifyCodeScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.idTypeSelectScreen,
    binding: AuthBinding(),
    page: () => const IdTypeSelectScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.uploadIdScreen,
    binding: AuthBinding(),
    page: () => const UploadIdScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.selectProfileImgScreen,
    binding: AuthBinding(),
    page: () => const SelectProfileImg(),
  ),
  GetPage(
    name: AppRoutes.instance.userWaitingScreen,
    binding: AuthBinding(),
    page: () => const UserWaitingScreen(),
  ),
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
  GetPage(
    name: AppRoutes.instance.educationLevelScreen,
    binding: AppBinding(),
    page: () => const EducationLevelScreen(),
  ),
];
