import 'package:get/get.dart';

import '../../../../presentation/bottom_nav_screen/account_screen/controllers/account_screen.controller.dart';

class AccountScreenControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountScreenController>(
      () => AccountScreenController(),
    );
  }
}
