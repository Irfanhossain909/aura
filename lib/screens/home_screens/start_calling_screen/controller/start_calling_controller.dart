import 'package:get/get.dart';
import 'package:aura/routes/app_routes.dart';

class StartCallingController extends GetxController {
  final RxBool isMatched = false.obs;
  final RxDouble knobAlignX = (-1.0).obs;

  void setMatched(bool value) {
    isMatched.value = value;
    knobAlignX.value = value ? 1.0 : -1.0;
    if (value) {
      _navigateToVedioCallingAndReset();
    }
  }

  void toggleMatched() {
    setMatched(!isMatched.value);
  }

  void updateDrag(double deltaFraction) {
    final double next = (knobAlignX.value + deltaFraction).clamp(-1.0, 1.0);
    knobAlignX.value = next;
  }

  void onDragEnd() {
    setMatched(knobAlignX.value >= 0);
  }

  Future<void> _navigateToVedioCallingAndReset() async {
    if (!isMatched.value) return;
    Get.toNamed(AppRoutes.instance.vedioCallingScreen);
    await Future.delayed(const Duration(seconds: 3));
    setMatched(false);
  }
}
