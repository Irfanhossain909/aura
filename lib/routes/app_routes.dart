class AppRoutes {
  AppRoutes._privateConstructor();
  static final AppRoutes _instance = AppRoutes._privateConstructor();
  static AppRoutes get instance => _instance;
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

  /////////////auth screens///////////////////////////////
  final String signUpScreen = "/sign-up-screen";
  final String loginScreen = "/login-screen";
  final String verifyPhoneScreen = "/verify-phone-screen";
}
