import 'package:aura/screens/extentions_screens/about_me_screen/controller/about_me_controller.dart';
import 'package:aura/screens/extentions_screens/dating_intensions_screen/controler/dating_intensions_controller.dart';
import 'package:aura/screens/extentions_screens/ethnicity_screen/controller/ethnicity_controller.dart';
import 'package:aura/screens/extentions_screens/gender_selection_screen/controller/gender_selection_controller.dart';
import 'package:aura/screens/extentions_screens/im_interested_in_screen/controller/im_interested_in_controller.dart';
import 'package:aura/screens/extentions_screens/member_prefference_screen/controler/member_prefference_controller.dart';
import 'package:aura/screens/extentions_screens/zoodiac_prefereance_screen/controller/zoodiac_prefereance_controller.dart';
import 'package:get/get.dart';

class AppBinding extends Bindings {
  @override
  dependencies() {
    Get.lazyPut(() => MemberPrefferenceController());
    Get.lazyPut(() => ImInterestedInController());
    Get.lazyPut(() => DatingIntensionsController());
    Get.lazyPut(() => EthnicityController());
    Get.lazyPut(() => ZoodiacPrefereanceController());
    Get.lazyPut(() => GenderSelectionController());
    Get.lazyPut(() => AboutMeController());
  }
}
