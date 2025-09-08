import 'package:aura/routes/app_routes.dart';
import 'package:get/get.dart';

class HomeMainController extends GetxController {
  RxBool isNAvigate = false.obs;

  void delayedFunction() {
    isNAvigate.value = true;
    Future.delayed(Duration(seconds: 10), () {
      isNAvigate.value = false;
      // Navigate to the next screen after 10 seconds
      Get.toNamed(AppRoutes.instance.vedioCallingScreen);  // Replace with your target screen widget
    });
  }
}
