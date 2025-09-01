import 'package:get/get.dart';

class PoliticsController extends GetxController {
  String? selectedOption;

  List<String> options = [
    "NOT POLITICAL",
    "APOLITICAL",
    "LIBERAL",
    "CONSERVATIVE",
    "MODERATE",
    "LIBERTARIAN",
    "SOCIALIST",
  ];

  void selectOption(String option) {
    selectedOption = option;
    update();
  }

  bool isSelected(String option) {
    return selectedOption == option;
  }
}
