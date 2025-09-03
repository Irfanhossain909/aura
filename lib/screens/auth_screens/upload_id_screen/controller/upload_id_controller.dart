import 'package:get/get.dart';

class UploadIdController extends GetxController {
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
