import 'package:get/get.dart';

class ReportOptionController extends GetxController {
  String? selectedEducationLevel;

  List<String> educationLevelOptions = [
    "Inappropriate behavior or harassment",
    "Fake profile or identity concerns",
    "Bullying",
    "Nudity",
    "Others",
  ];

  void selectEducationLevel(String educationLevel) {
    selectedEducationLevel = educationLevel;
    update();
  }

  bool isSelected(String educationLevel) {
    return selectedEducationLevel == educationLevel;
  }

  
}
