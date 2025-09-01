import 'package:aura/utils/applog/app_print.dart';
import 'package:get/get.dart';

class DatingIntensionsController extends GetxController {
  RxBool lifepartnerChecked = false.obs;
  RxBool longTermRelationshipChecked = false.obs;
  RxBool shortTimeRelationshipChecked = false.obs;
  RxBool doesNotMatterChecked = false.obs;

  void toggleLifepartner() {
    lifepartnerChecked.value = !lifepartnerChecked.value;
    AppPrint.appPrint(lifepartnerChecked);
  }

  void toggleLongTermRelationship() {
    longTermRelationshipChecked.value = !longTermRelationshipChecked.value;
    AppPrint.appPrint(longTermRelationshipChecked);
  }

  void toggleShortTimeRelationship() {
    shortTimeRelationshipChecked.value = !shortTimeRelationshipChecked.value;
    AppPrint.appPrint(shortTimeRelationshipChecked);
  }

  void toggledoesNotMatter() {
    doesNotMatterChecked.value = !doesNotMatterChecked.value;
    AppPrint.appPrint(doesNotMatterChecked);
  }

 
}
