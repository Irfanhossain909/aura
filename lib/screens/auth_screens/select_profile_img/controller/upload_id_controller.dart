import 'package:get/get.dart';

class SelectProfileImgController extends GetxController {
  String? uploadType;

  List<String> educationLevelOptions = ["TAKE PHOTO", "UPLOAD PHOTO"];

  void selectEducationLevel(String document) {
    uploadType = document;
    update();
  }

  bool isSelected(String document) {
    return uploadType == document;
  }
}
