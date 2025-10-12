import 'package:aura/routes/app_routes.dart';
import 'package:get/get.dart';

class HomeMainController extends GetxController {
  RxBool isNAvigate = false.obs;
  RxInt selectedMenuIndex = 0.obs; // 0: LOCAL, 1: SELECT CITY, 2: EXPLORE
  RxBool isLocalJoined =
      false.obs; // Track if JOIN button was clicked for LOCAL

  List<String> menuItems = ["LOCAL", "SELECT CITY", "EXPLORE"];

  void selectMenuItem(int index) {
    selectedMenuIndex.value = index;
  }

  void joinLocal() {
    isLocalJoined.value = true;
    Get.back(); // Close the dialog
  }

  void delayedFunction() {
    isNAvigate.value = true;
    Future.delayed(Duration(seconds: 2), () {
      isNAvigate.value = false;
      // Navigate to the next screen after 10 seconds
      Get.toNamed(
        AppRoutes.instance.startCallingScreen,
      ); // Replace with your target screen widget
    });
  }
}
