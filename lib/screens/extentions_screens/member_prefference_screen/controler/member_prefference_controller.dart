import 'package:aura/utils/applog/app_print.dart';
import 'package:get/get.dart';

class MemberPrefferenceController extends GetxController {
  RxBool drinkingChecked = false.obs;
  RxBool marijuanaChecked = false.obs;
  RxBool smokingChecked = false.obs;
  RxBool doesNotMatterChecked = false.obs;
  RxBool chilredChecked = false.obs;

  void toggleDrinking() {
    drinkingChecked.value = !drinkingChecked.value;
    AppPrint.appPrint(drinkingChecked);
  }
  void toggleMarijuana() {
    marijuanaChecked.value = !marijuanaChecked.value;
    AppPrint.appPrint(marijuanaChecked);
  }
  void toggleSmoking() {
    smokingChecked.value = !smokingChecked.value;
    AppPrint.appPrint(smokingChecked);
  }
  void toggleDoesNotMatter() {
    doesNotMatterChecked.value = !doesNotMatterChecked.value;
    AppPrint.appPrint(doesNotMatterChecked);
  }
  void toggleChildren() {
    chilredChecked.value = !chilredChecked.value;
    AppPrint.appPrint(chilredChecked);
  }
}
