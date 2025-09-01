import 'package:aura/screens/auth_screens/signup_screen/controller/signup_controller.dart';
import 'package:get/get.dart';

class AuthBinding extends Bindings {
  @override
  dependencies() {

    Get.lazyPut(() => SignupController());
    // Get.lazyPut(() => SignUpController());
    // Get.lazyPut(() => ForgetPasswordController());
    // Get.lazyPut(() => OtpVerificationController());
    // Get.lazyPut(() => CreateNewPasswordController());
    // Get.lazyPut(() => LogWithMobileController());
    // Get.lazyPut(() => SignUpScreenController());
    // Get.lazyPut(() => CreateNewPasswordScreenController());
  }
}
