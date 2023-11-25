import 'package:get/get.dart';

import '../../../../presentation/bottom_nav_screen/categories_screen/controllers/categories_screen.controller.dart';

class CategoriesScreenControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoriesScreenController>(
      () => CategoriesScreenController(),
    );
  }
}
