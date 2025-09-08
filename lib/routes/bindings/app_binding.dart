import 'package:aura/screens/app_navigation_screen/controller/navigation_screen_controller.dart';
import 'package:aura/screens/extentions_screens/about_me_screen/controller/about_me_controller.dart';
import 'package:aura/screens/extentions_screens/dating_intensions_screen/controler/dating_intensions_controller.dart';
import 'package:aura/screens/extentions_screens/ethnicity_screen/controller/ethnicity_controller.dart';
import 'package:aura/screens/extentions_screens/gender_selection_screen/controller/gender_selection_controller.dart';
import 'package:aura/screens/extentions_screens/im_interested_in_screen/controller/im_interested_in_controller.dart';
import 'package:aura/screens/extentions_screens/member_prefference_screen/controler/member_prefference_controller.dart';
import 'package:aura/screens/extentions_screens/zoodiac_prefereance_screen/controller/zoodiac_prefereance_controller.dart';
import 'package:aura/screens/home_screens/home_main_screen/controller/home_main_controller.dart';
import 'package:aura/screens/settings_screen/push_notification_screen/controller/push_notification_controller.dart';
import 'package:aura/screens/settings_screen/contact_list_screen/controller/contact_list_controller.dart';
import 'package:aura/screens/chat_screens/message_screen/controller/message_controller.dart';
import 'package:aura/screens/settings_screen/report_option_screen/controller/report_option_controller.dart';
import 'package:aura/screens/profile_screens/profile_edit_screen/controller/profile_edit_controller.dart';
import 'package:get/get.dart';

class AppBinding extends Bindings {
  @override
  dependencies() {
    ///////////////////NAVIGATION//////////////////////
    Get.lazyPut(() => NavigationScreenController());
    //////===============================================
    Get.lazyPut(() => MemberPrefferenceController());
    Get.lazyPut(() => ImInterestedInController());
    Get.lazyPut(() => DatingIntensionsController());
    Get.lazyPut(() => EthnicityController());
    Get.lazyPut(() => ZoodiacPrefereanceController());
    Get.lazyPut(() => GenderSelectionController());
    Get.lazyPut(() => AboutMeController());
    Get.lazyPut(() => PushNotificationController());
    Get.lazyPut(() => ContactListController());
    Get.lazyPut(() => MessageController());
    Get.lazyPut(() => ReportOptionController());
    Get.lazyPut(() => ProfileEditController());
    Get.lazyPut(() => HomeMainController());
  }
}
