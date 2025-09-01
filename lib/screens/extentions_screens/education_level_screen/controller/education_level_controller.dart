import 'package:get/get.dart';

class EducationLevelController extends GetxController {
  String? selectedEducationLevel;

  List<String> educationLevelOptions = [
    "High School",
    "Undergrad",
    "Postgrad",
    "Prefer not to say",
  ];

  void selectEducationLevel(String educationLevel) {
    selectedEducationLevel = educationLevel;
    update();
  }

  bool isSelected(String educationLevel) {
    return selectedEducationLevel == educationLevel;
  }
}
