import 'package:aura/utils/applog/app_print.dart';
import 'package:get/get.dart';

class ImInterestedInController extends GetxController {
  RxBool menChecked = false.obs;
  RxBool womenChecked = false.obs;
  RxBool nonbinarypeopleChecked = false.obs;
  RxBool everyoneChecked = false.obs;

  void toggleMen() {
    menChecked.value = !menChecked.value;
    AppPrint.appPrint(menChecked);
  }

  void togglewoMen() {
    womenChecked.value = !womenChecked.value;
    AppPrint.appPrint(womenChecked);
  }

  void togglenonbinarypeople() {
    nonbinarypeopleChecked.value = !nonbinarypeopleChecked.value;
    AppPrint.appPrint(nonbinarypeopleChecked);
  }

  void toggleeveryone() {
    everyoneChecked.value = !everyoneChecked.value;
    AppPrint.appPrint(everyoneChecked);
  }
}
