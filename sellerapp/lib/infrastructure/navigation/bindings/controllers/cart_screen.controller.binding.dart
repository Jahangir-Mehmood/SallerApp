import 'package:get/get.dart';

import '../../../../presentation/bottom_nav_screen/cart_screen/controllers/cart_screen.controller.dart';

class CartScreenControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartScreenController>(
      () => CartScreenController(),
    );
  }
}
