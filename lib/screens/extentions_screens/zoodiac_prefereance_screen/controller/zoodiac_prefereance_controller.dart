import 'package:get/get.dart';

class ZoodiacPrefereanceController extends GetxController {
  RxBool ariesChecked = false.obs;
  RxBool taurusChecked = false.obs;
  RxBool geminiChecked = false.obs;
  RxBool cancerChecked = false.obs;
  RxBool leoChecked = false.obs;
  RxBool virgoChecked = false.obs;
  RxBool libraChecked = false.obs;
  RxBool scorpioChecked = false.obs;
  RxBool sagittariusChecked = false.obs;
  RxBool capricornChecked = false.obs;
  RxBool aquariusChecked = false.obs;
  RxBool piscesChecked = false.obs;

  void toggleAries() {
    ariesChecked.value = !ariesChecked.value;
  }

  void toggleTaurus() {
    taurusChecked.value = !taurusChecked.value;
  }

  void toggleGemini() {
    geminiChecked.value = !geminiChecked.value;
  }

  void toggleCancer() {
    cancerChecked.value = !cancerChecked.value;
  }

  void toggleLeo() {
    leoChecked.value = !leoChecked.value;
  }

  void toggleVirgo() {
    virgoChecked.value = !virgoChecked.value;
  }

  void toggleLibra() {
    libraChecked.value = !libraChecked.value;
  }

  void toggleScorpio() {
    scorpioChecked.value = !scorpioChecked.value;
  }

  void toggleSagittarius() {
    sagittariusChecked.value = !sagittariusChecked.value;
  }

  void toggleCapricorn() {
    capricornChecked.value = !capricornChecked.value;
  }

  void toggleAquarius() {
    aquariusChecked.value = !aquariusChecked.value;
  }

  void togglePisces() {
    piscesChecked.value = !piscesChecked.value;
  }
}
