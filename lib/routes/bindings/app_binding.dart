
import 'package:aura/screens/extentions_screens/im_interested_in_screen/controller/im_interested_in_controller.dart';
import 'package:aura/screens/extentions_screens/member_prefference_screen/controler/member_prefference_controller.dart';
import 'package:get/get.dart';

class AppBinding extends Bindings {
  @override
    dependencies() {
      Get.lazyPut(() => MemberPrefferenceController());
      Get.lazyPut(() => ImInterestedInController());
    
  }
}
