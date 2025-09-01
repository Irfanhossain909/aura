import 'package:get/get.dart';

class GenderSelectionController extends GetxController {
  String? selectedGender;

  List<String> genderOptions = [
    "MAN",
    "WOMEN",
    "NON-BINARY PEOPLE",
    "TRANS MAN",
    "TRANS WOMAN",
  ];

  void selectGender(String gender) {
    selectedGender = gender;
    update();
  }

  bool isSelected(String gender) {
    return selectedGender == gender;
  }
}
