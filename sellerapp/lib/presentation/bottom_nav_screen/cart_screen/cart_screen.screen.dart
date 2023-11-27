import 'package:get/get.dart';
import 'package:sellerapp/consts/consts.dart';

import 'controllers/cart_screen.controller.dart';

class CartScreenScreen extends GetView<CartScreenController> {
  const CartScreenScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: 'Cart is Empty'.text.make().centered(),
    );
  }
}
