import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/cart_screen.controller.dart';

class CartScreenScreen extends GetView<CartScreenController> {
  const CartScreenScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CartScreenScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CartScreenScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
