import 'package:aura/screens/auth_screens/id_type_select_screen/controller/id_type_select_controller.dart';
import 'package:aura/screens/auth_screens/signup_screen/controller/signup_controller.dart';
import 'package:aura/screens/auth_screens/upload_id_screen/controller/upload_id_controller.dart';
import 'package:get/get.dart';

class AuthBinding extends Bindings {
  @override
  dependencies() {

    Get.lazyPut(() => SignupController());
    Get.lazyPut(() => IdTypeSelectController());
    Get.lazyPut(() => UploadIdController());
    // Get.lazyPut(() => ForgetPasswordController());
    // Get.lazyPut(() => OtpVerificationController());
    // Get.lazyPut(() => CreateNewPasswordController());
    // Get.lazyPut(() => LogWithMobileController());
    // Get.lazyPut(() => SignUpScreenController());
    // Get.lazyPut(() => CreateNewPasswordScreenController());
  }
}
