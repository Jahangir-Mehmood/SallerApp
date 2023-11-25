import 'package:get/get.dart';

import '../../../../presentation/bottom_nav_screen/controllers/bottom_nav_screen.controller.dart';

class BottomNavScreenControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavScreenController>(
      () => BottomNavScreenController(),
    );
  }
}
