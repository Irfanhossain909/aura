import 'package:get/get.dart';

class UnlockAuraController extends GetxController {
  // Selected plan index (0-3 for the 4 plans)
  var selectedPlanIndex = 0.obs;

  // Plan data
  final List<Map<String, dynamic>> plans = [
    {'title': 'WEEKLY', 'period': '1 Week', 'price': '\$8.99', 'save': null},
    {'title': 'MONTHLY', 'period': '1 Month', 'price': '\$21.99', 'save': null},
    {
      'title': '3 MONTHS',
      'period': 'Save 5%',
      'price': '\$62.55',
      'save': 'Save 5%',
    },
    {
      'title': '6 MONTHS',
      'period': 'Save 9%',
      'price': '\$119.99',
      'save': 'Save 9%',
    },
  ];

  // Method to select a plan
  void selectPlan(int index) {
    selectedPlanIndex.value = index;
  }

  // Method to handle upgrade button press
  void onUpgradePressed() {
    Get.snackbar(
      'Upgrade',
      'Upgrading to ${plans[selectedPlanIndex.value]['title']}',
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
