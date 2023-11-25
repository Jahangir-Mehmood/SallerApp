import 'package:get/get.dart';

import '../../../../presentation/signup_screen/controllers/signup_screen.controller.dart';

class SignupScreenControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupScreenController>(
      () => SignupScreenController(),
    );
  }
}
