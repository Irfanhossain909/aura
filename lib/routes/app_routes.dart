class AppRoutes {
  AppRoutes._privateConstructor();
  static final AppRoutes _instance = AppRoutes._privateConstructor();
  static AppRoutes get instance => _instance;

  //////////////NAVIGATION SCREEN////////////////////////////////
  final String initial = "/";
  final String navigationScreen = "/navigation-screen";
  /////////////  App Extention screens
  final String memberPrefferenceScreen = "/member-prefference-screen";
  final String imInterestedInScreen = "/im-interested-in_screen";
  final String datingIntensionsScreen = "/dating-intensions-screen";
  final String ethnicityScreen = "/ethnicity-screen";
  final String zoodiacPrefereanceScreen = "/zoodiac-prefereance-screen";
  final String genderSelectionScreen = "/gender-selection-screen";
  final String politicsScreen = "/politics-screen";
  final String aboutMeScreen = "/about-me-screen";
  final String educationLevelScreen = "/education-level-screen";

  /////////////  Settings screens
  final String pushNotificationScreen = "/push-notification-screen";
  final String prefrenceScreen = "/prefrence-screen";
  final String contactListScreen = "/contact-list-screen";
  final String deleteAndArciveAccountScreen = "/delete-and-arcive-screen";
  final String accountArciveScreen = "/account-arcive-screen";
  final String accountDeleteScreen = "/account-delete-screen";
  final String communityGuideLineScreen = "/community-guidelie-screen";
  final String reportOptionScreen = "/report-option-screen";
  final String reportSubmitScreen = "/report-submit-screen";

  /////////////auth screens///////////////////////////////
  final String signUpScreen = "/sign-up-screen";
  final String loginScreen = "/login-screen";
  final String verifyPhoneScreen = "/verify-phone-screen";
  final String verifyCodeScreen = "/verify-code-screen";
  final String idTypeSelectScreen = "/idtype-select-screen";
  final String uploadIdScreen = "/upload-id-screen";
  final String selectProfileImgScreen = "/select-profile-img-screen";
  final String userWaitingScreen = "/user-waiting-screen";
  final String selectionScreen = "/selection-screen";
  final String enterPhoneScreen = "/enter-phone-screen";

  //////////////Chat Screen//////////////////////////////////////
  final String chatListScreen = "/chat-list-screen";
  final String messageScreen = "/message-screen";
  final String syncContactScreen = "/sync-contact-screen";
  //////////////Profile Screen//////////////////////////////////////
  final String profileTypeScreen = "/profile-type-screen";
  final String profileEditScreen = "/profile-edit-screen";
  final String shopScreen = "/shop-screen";
  final String iceBreakScreen = "/ice-break-screen";
  final String unlimitedRelocationScreen = "/unlimited-relocation-screen";
  final String getTImeScreen = "/get-time-screen";
  final String giftScreen = "/gift-screen";
  final String unlockAuraScreen = "/unlock-aura-screen";

  ///////////////Home Screen//////////////////
  final String homeMainScreen = "/home-main-screen";
  final String vedioCallingScreen = "/vedio-calling-screen";
}
