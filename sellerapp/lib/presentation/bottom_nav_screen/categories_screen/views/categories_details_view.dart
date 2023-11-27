import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widget_common/bg_widget.dart';

class CategoriesDetailsView extends GetView {
  String title;

  CategoriesDetailsView({required this.title, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    ));
  }
}
