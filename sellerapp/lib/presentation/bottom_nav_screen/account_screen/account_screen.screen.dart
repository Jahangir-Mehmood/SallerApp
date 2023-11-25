import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/account_screen.controller.dart';

class AccountScreenScreen extends GetView<AccountScreenController> {
  const AccountScreenScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AccountScreenScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AccountScreenScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
