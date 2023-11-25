import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../config.dart';
import '../../presentation/bottom_nav_screen/cart_screen/cart_screen.screen.dart';
import '../../presentation/screens.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'routes.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  EnvironmentsBadge({required this.child});
  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.CART_SCREEN,
      page: () => const CartScreenScreen(),
      binding: CartScreenControllerBinding(),
    ),
    GetPage(
      name: Routes.SPLASH_SCREEN,
      page: () => const SplashScreenScreen(),
      binding: SplashScreenControllerBinding(),
    ),
    GetPage(
      name: Routes.CATEGORIES_SCREEN,
      page: () => const CategoriesScreenScreen(),
      binding: CategoriesScreenControllerBinding(),
    ),
    GetPage(
      name: Routes.ACCOUNT_SCREEN,
      page: () => const AccountScreenScreen(),
      binding: AccountScreenControllerBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.BOTTOM_NAV_SCREEN,
      page: () => const BottomNavScreenScreen(),
      binding: BottomNavScreenControllerBinding(),
    ),
    GetPage(
      name: Routes.SIGNUP_SCREEN,
      page: () => const SignupScreenScreen(),
      binding: SignupScreenControllerBinding(),
    ),
    GetPage(
      name: Routes.LOGIN_SCREEN,
      page: () => const LoginScreenScreen(),
      binding: LoginScreenControllerBinding(),
    ),
  ];
}
