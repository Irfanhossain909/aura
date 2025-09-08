import 'package:get/get.dart';

class ProfileEditController extends GetxController {
  // Age range values
  RxDouble minAge = 18.0.obs;
  RxDouble maxAge = 65.0.obs;

  // Current age value
  RxDouble currentAge = 23.0.obs;

  // Name value
  RxString userName = "SARAH".obs;

  // Update minimum age
  void updateMinAge(double value) {
    if (value < maxAge.value) {
      minAge.value = value;
    }
  }

  // Update maximum age
  void updateMaxAge(double value) {
    if (value > minAge.value) {
      maxAge.value = value;
    }
  }

  // Update current age
  void updateCurrentAge(double value) {
    currentAge.value = value;
  }

  // Update user name
  void updateUserName(String name) {
    userName.value = name;
  }

  // Get age range text
  String get ageRangeText => "${minAge.value.toInt()}-${maxAge.value.toInt()}";
}
