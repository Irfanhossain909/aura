import 'package:get/get.dart';

class IdTypeSelectController extends GetxController{
  String? selectedDucumentType;

  List<String> educationLevelOptions = [
    "DRIVER’S LICENSE",
    "PASSPORT",
    "GOVERNMENT ID",
  ];

  void selectEducationLevel(String document) {
    selectedDucumentType = document;
    update();
  }

  bool isSelected(String document) {
    return selectedDucumentType == document;
  }
}