import 'package:get/get.dart';
import 'package:sellerapp/consts/consts.dart';
import 'package:sellerapp/presentation/bottom_nav_screen/categories_screen/controllers/categories_screen.controller.dart';
import 'package:sellerapp/presentation/bottom_nav_screen/categories_screen/views/categories_details_view.dart';

import '../../../consts/list.dart';
import '../../../widget_common/bg_widget.dart';

class CategoriesScreenScreen extends GetView<CategoriesScreenController> {
  const CategoriesScreenScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
        appBar: AppBar(title: categories.text.color(whiteColor).fontFamily(bold).make()),
        body: Container(
            padding: const EdgeInsets.all(12),
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: 9,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 8, mainAxisExtent: 200),
                itemBuilder: (context, index) {
                  return Column(children: [
                    Image.asset(categoriesImages[index], height: 120, width: 200, fit: BoxFit.cover),
                    10.heightBox,
                    categoriesList[index].text.align(TextAlign.center).color(darkFontGrey).make()
                  ]).box.roundedSM.color(whiteColor).clip(Clip.antiAlias).outerShadowSm.make().onTap(() {
                    Get.to(CategoriesDetailsView(title: categoriesList[index]));
                  });
                }))));
  }
}
