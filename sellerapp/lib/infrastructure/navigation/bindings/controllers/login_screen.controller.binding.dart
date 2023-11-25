import 'package:get/get.dart';

import '../../../../presentation/login_screen/controllers/login_screen.controller.dart';

class LoginScreenControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginScreenController>(
      () => LoginScreenController(),
    );
  }
}
