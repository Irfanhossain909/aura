import 'package:aura/utils/applog/app_print.dart';
import 'package:get/get.dart';

class EthnicityController extends GetxController {
  RxBool blackAfricaDecentChecked = false.obs;
  RxBool eastAsiaChecked = false.obs;
  RxBool hispanicLatinoChecked = false.obs;
  RxBool middleEasternChecked = false.obs;
  RxBool nativeAmericanChecked = false.obs;
  RxBool pacificIslanderChecked = false.obs;
  RxBool southAsianChecked = false.obs;
  RxBool southeastAsianChecked = false.obs;
  RxBool whiteCaucasianChecked = false.obs;
  RxBool otherChecked = false.obs;
  RxBool openToAllChecked = false.obs;
  RxBool piscesChecked = false.obs;

  void toggleBlackAfricaDescent() {
    blackAfricaDecentChecked.value = !blackAfricaDecentChecked.value;
    AppPrint.appPrint(blackAfricaDecentChecked);
  }

  void toggleEastAsia() {
    eastAsiaChecked.value = !eastAsiaChecked.value;
    AppPrint.appPrint(eastAsiaChecked);
  }

  void toggleHispanicLatino() {
    hispanicLatinoChecked.value = !hispanicLatinoChecked.value;
    AppPrint.appPrint(hispanicLatinoChecked);
  }

  void toggleMiddleEastern() {
    middleEasternChecked.value = !middleEasternChecked.value;
    AppPrint.appPrint(middleEasternChecked);
  }

  void toggleNativeAmerican() {
    nativeAmericanChecked.value = !nativeAmericanChecked.value;
    AppPrint.appPrint(nativeAmericanChecked);
  }

  void togglePacificIslander() {
    pacificIslanderChecked.value = !pacificIslanderChecked.value;
    AppPrint.appPrint(pacificIslanderChecked);
  }

  void toggleSouthAsian() {
    southAsianChecked.value = !southAsianChecked.value;
    AppPrint.appPrint(southAsianChecked);
  }

  void toggleSoutheastAsian() {
    southeastAsianChecked.value = !southeastAsianChecked.value;
    AppPrint.appPrint(southeastAsianChecked);
  }

  void toggleWhiteCaucasian() {
    whiteCaucasianChecked.value = !whiteCaucasianChecked.value;
    AppPrint.appPrint(whiteCaucasianChecked);
  }

  void toggleOther() {
    otherChecked.value = !otherChecked.value;
    AppPrint.appPrint(otherChecked);
  }

  void toggleOpenToAll() {
    openToAllChecked.value = !openToAllChecked.value;
    AppPrint.appPrint(openToAllChecked);
  }

  void togglePisces() {
    piscesChecked.value = !piscesChecked.value;
    AppPrint.appPrint(piscesChecked);
  }
}
