import 'package:aura/routes/app_routes.dart';
import 'package:aura/routes/bindings/app_binding.dart';
import 'package:aura/routes/bindings/auth_binding.dart';
import 'package:aura/screens/app_navigation_screen/navigation_screen.dart';
import 'package:aura/screens/auth_screens/id_type_select_screen/id_type_select_screen.dart';
import 'package:aura/screens/auth_screens/login_screen/login_screen.dart';
import 'package:aura/screens/auth_screens/select_profile_img/select_profile_img.dart';
import 'package:aura/screens/auth_screens/selection_screen/selection_screen.dart';
import 'package:aura/screens/auth_screens/signup_screen/signup_screen.dart';
import 'package:aura/screens/auth_screens/upload_id_screen/upload_id_screen.dart';
import 'package:aura/screens/auth_screens/verify_code_screen/verify_code_screen.dart';
import 'package:aura/screens/auth_screens/verify_phone_screen/verify_prone_screen.dart';
import 'package:aura/screens/chat_screens/chat_list_screen/chat_list_screen.dart';
import 'package:aura/screens/chat_screens/message_screen/message_screen.dart';
import 'package:aura/screens/chat_screens/sync_contact_screen/sync_contact_screen.dart';
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
import 'package:aura/screens/settings_screen/account_arcive_screen/account_arcive_screen.dart';
import 'package:aura/screens/settings_screen/account_delete_screen/account_delete_screen.dart';
import 'package:aura/screens/settings_screen/comunity_guideline_screen/comunity_guideline_screen.dart';
import 'package:aura/screens/settings_screen/contact_list_screen/contact_list_screen.dart';
import 'package:aura/screens/settings_screen/delete_and_arcive_screen/delete_and_arcive_screen.dart';
import 'package:aura/screens/settings_screen/prefrerence_etarnity_screen.dart/prefrence_screen.dart';
import 'package:aura/screens/settings_screen/push_notification_screen/push_notification_screen.dart';
import 'package:aura/screens/settings_screen/report_option_screen/report_option_screen.dart';
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
  GetPage(
    name: AppRoutes.instance.navigationScreen,
    page: () => const NavigationScreen(),
    binding: AppBinding(),
    // page: () => const SplashScreen(),
    // transitionDuration: Duration(milliseconds: 800),
    // opaque: false,
  ),

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
  GetPage(
    name: AppRoutes.instance.selectionScreen,
    // binding: AuthBinding(),
    page: () => const SelectionScreen(),
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
  //////////=======================Settings screen===================
  GetPage(
    name: AppRoutes.instance.pushNotificationScreen,
    binding: AppBinding(),
    page: () => const PushNotificationScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.prefrenceScreen,
    // binding: AppBinding(),
    page: () => const PrefrenceScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.contactListScreen,
    binding: AppBinding(),
    page: () => const ContactListScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.deleteAndArciveAccountScreen,
    binding: AppBinding(),
    page: () => const DeleteAndArciveScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.accountArciveScreen,
    binding: AppBinding(),
    page: () => const AccountArciveScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.accountDeleteScreen,
    binding: AppBinding(),
    page: () => const AccountDeleteScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.communityGuideLineScreen,
    binding: AppBinding(),
    page: () => const ComunityGuidelineScreen(),
  ),

  //////////////Chat Screen////////////////////
  GetPage(
    name: AppRoutes.instance.chatListScreen,
    page: () => const ChatListScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.messageScreen,
    binding: AppBinding(),
    page: () => const MessageScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.syncContactScreen,
    binding: AppBinding(),
    page: () => const SyncContactScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.reportOptionScreen,
    binding: AppBinding(),
    page: () => const ReportOptionScreen(),
  ),
];
