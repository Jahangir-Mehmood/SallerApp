import 'package:sellerapp/consts/consts.dart';

Widget detailCart({width, String? count, String? title}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count!.text.size(16).color(darkFontGrey).bold.make(),
      5.heightBox,
      title!.text.color(darkFontGrey).make(),
    ],
  ).box.white.rounded.width(width).height(80).make();
}
