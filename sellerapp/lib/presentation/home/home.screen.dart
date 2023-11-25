import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../consts/colors.dart';
import '../../consts/styles.dart';
import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Column(
        children: [
          Obx(() {
            return Expanded(child: controller.navBody.elementAt(controller.currentIndex.value));
          }),
          Obx(() {
            return BottomNavigationBar(
              currentIndex: controller.currentIndex.value,
              type: BottomNavigationBarType.fixed,
              backgroundColor: whiteColor,
              selectedItemColor: redColor,
              selectedLabelStyle: const TextStyle(fontFamily: semibold),
              items: controller.navItems,
              onTap: (value) {
                controller.currentIndex.value = value;
              },
            );
          }),
        ],
      ),
    );
  }
}
