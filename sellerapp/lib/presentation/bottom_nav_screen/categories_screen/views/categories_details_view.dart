import 'package:get/get.dart';
import 'package:sellerapp/consts/consts.dart';
import 'package:sellerapp/presentation/bottom_nav_screen/categories_screen/views/item_details_view.dart';

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
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(children: [
          SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      6,
                      (index) => "Baby Clouthing"
                          .text
                          .color(darkFontGrey)
                          .fontFamily(semibold)
                          .size(12)
                          .makeCentered()
                          .box
                          .color(whiteColor)
                          .size(120, 40)
                          .margin(const EdgeInsets.symmetric(horizontal: 3))
                          .roundedSM
                          .make()))),
          20.heightBox,
          Expanded(
              child: GridView.builder(
                  itemCount: 6,
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 250, mainAxisSpacing: 8, crossAxisSpacing: 8),
                  itemBuilder: (context, index) {
                    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Image.asset(imgP5, height: 180, width: 150, fit: BoxFit.cover),
                      'Laptop 4GB/64GB'.text.fontFamily(semibold).color(darkFontGrey).make(),
                      10.heightBox,
                      '\$500'.text.color(redColor).fontFamily(bold).size(16).make()
                    ]).box.margin(const EdgeInsets.symmetric(horizontal: 6)).color(whiteColor).padding(const EdgeInsets.all(12)).rounded.make().onTap(() {
                      Get.to(ItemDetailsView(title: "Dummy Title"));
                    });
                  }))
        ]),
      ),
    ));
  }
}
