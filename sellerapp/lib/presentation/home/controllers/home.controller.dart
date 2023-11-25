import 'package:get/get.dart';
import 'package:sellerapp/presentation/bottom_nav_screen/account_screen/account_screen.screen.dart';
import 'package:sellerapp/presentation/bottom_nav_screen/cart_screen/cart_screen.screen.dart';
import 'package:sellerapp/presentation/bottom_nav_screen/categories_screen/categories_screen.screen.dart';

import '../../../consts/consts.dart';
import '../../bottom_nav_screen/bottom_nav_screen.screen.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  var currentIndex = 0.obs;
  var navItems = [
    BottomNavigationBarItem(icon: Image.asset(icHome, width: 26), label: home),
    BottomNavigationBarItem(icon: Image.asset(icCategories, width: 26), label: categories),
    BottomNavigationBarItem(icon: Image.asset(icCart, width: 26), label: cart),
    BottomNavigationBarItem(icon: Image.asset(icProfile, width: 26), label: account)
  ];
  var navBody = [const BottomNavScreenScreen(), const CategoriesScreenScreen(), const CartScreenScreen(), const AccountScreenScreen()];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
