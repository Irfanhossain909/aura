import 'package:get/get.dart';

class AboutMeController extends GetxController {
  RxString selectedMinHeight = "4'0".obs;
  RxString selectedMaxHeight = "7'6".obs;

  final List<String> heightOptions = [
    "4'0",
    "4'1",
    "4'2",
    "4'3",
    "4'4",
    "4'5",
    "4'6",
    "4'7",
    "4'8",
    "4'9",
    "4'10",
    "4'11",
    "5'0",
    "5'1",
    "5'2",
    "5'3",
    "5'4",
    "5'5",
    "5'6",
    "5'7",
    "5'8",
    "5'9",
    "5'10",
    "5'11",
    "6'0",
    "6'1",
    "6'2",
    "6'3",
    "6'4",
    "6'5",
    "6'6",
    "6'7",
    "6'8",
    "6'9",
    "6'10",
    "6'11",
    "7'0",
    "7'1",
    "7'2",
    "7'3",
    "7'4",
    "7'5",
    "7'6",
  ];

  void selectMinHeight(String value) {
    selectedMinHeight.value = value;
    update();
  }

  void selectMaxHeight(String value) {
    selectedMaxHeight.value = value;
    update();
  }

  void incrementMinHeight() {
    if (selectedMinHeight.value.isEmpty) {
      selectedMinHeight.value = heightOptions.first;
    } else {
      int currentIndex = heightOptions.indexOf(selectedMinHeight.value);
      if (currentIndex < heightOptions.length - 1) {
        selectedMinHeight.value = heightOptions[currentIndex + 1];
      }
    }
    update();
  }

  void decrementMinHeight() {
    if (selectedMinHeight.value.isEmpty) {
      selectedMinHeight.value = heightOptions.first;
    } else {
      int currentIndex = heightOptions.indexOf(selectedMinHeight.value);
      if (currentIndex > 0) {
        selectedMinHeight.value = heightOptions[currentIndex - 1];
      }
    }
    update();
  }

  void incrementMaxHeight() {
    if (selectedMaxHeight.value.isEmpty) {
      selectedMaxHeight.value = heightOptions.first;
    } else {
      int currentIndex = heightOptions.indexOf(selectedMaxHeight.value);
      if (currentIndex < heightOptions.length - 1) {
        selectedMaxHeight.value = heightOptions[currentIndex + 1];
      }
    }
    update();
  }

  void decrementMaxHeight() {
    if (selectedMaxHeight.value.isEmpty) {
      selectedMaxHeight.value = heightOptions.first;
    } else {
      int currentIndex = heightOptions.indexOf(selectedMaxHeight.value);
      if (currentIndex > 0) {
        selectedMaxHeight.value = heightOptions[currentIndex - 1];
      }
    }
    update();
  }
}
