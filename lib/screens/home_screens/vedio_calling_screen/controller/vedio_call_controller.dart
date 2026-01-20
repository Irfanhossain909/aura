import 'package:get/get.dart';

class VedioCallController extends GetxController {
  /// Whether the match switch is active (matched)
  final RxBool isMatched = false.obs;
  final RxBool isIceBrekarShow = false.obs;
  final RxBool isAuraCardShow = false.obs;

  /// Knob horizontal alignment from -1.0 (left) to 1.0 (right)
  final RxDouble knobAlignX = (-1.0).obs;

  void setMatched(bool value) {
    isMatched.value = value;
    knobAlignX.value = value ? 1.0 : -1.0;
  }

  void toggleMatched() {
    setMatched(!isMatched.value);
  }

  void toggleIceBrekar() {
    // isIceBrekarShow.value = !isIceBrekarShow.value;
    isAuraCardShow.value = false;
    isIceBrekarShow.value = true;
    Future.delayed(Duration(seconds: 3), () {
      isIceBrekarShow.value = false;
    });
  }

  void toggleAuraCard() {
    isIceBrekarShow.value = false;
    isAuraCardShow.value = true;
  }

  void removeAuraCard() {
    isAuraCardShow.value = false;
  }

  /// Update knob position during drag
  void updateDrag(double deltaFraction) {
    final double next = (knobAlignX.value + deltaFraction).clamp(-1.0, 1.0);
    knobAlignX.value = next;
  }

  /// Decide final state on drag end based on knob position
  void onDragEnd() {
    setMatched(knobAlignX.value >= 0);
  }
}
