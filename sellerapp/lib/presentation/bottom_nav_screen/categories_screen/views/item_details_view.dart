import 'package:get/get.dart';
import 'package:sellerapp/consts/consts.dart';
import 'package:sellerapp/consts/list.dart';
import 'package:sellerapp/widget_common/our_button.dart';

class ItemDetailsView extends GetView {
  ItemDetailsView({required this.title, Key? key}) : super(key: key);
  String? title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.share, color: darkFontGrey)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outline, color: darkFontGrey)),
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                  child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VxSwiper.builder(
                      autoPlay: true,
                      height: 350,
                      aspectRatio: 16 / 9,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Image.asset(imgFc5, height: double.infinity, fit: BoxFit.cover);
                      }),
                  10.heightBox,
                  title!.text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                  10.heightBox,
                  VxRating(
                    onRatingUpdate: (value) {},
                    normalColor: textfieldGrey,
                    selectionColor: golden,
                    count: 5,
                    size: 25,
                    stepInt: true,
                  ),
                  10.heightBox,
                  '\$3000'.text.size(18).color(redColor).fontFamily(bold).make(),
                  10.heightBox,
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          'Seller'.text.white.fontFamily(semibold).make(),
                          5.heightBox,
                          'In House Brands'.text.fontFamily(semibold).color(darkFontGrey).make(),
                        ],
                      )),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.message_rounded,
                          color: darkFontGrey,
                        ),
                      )
                    ],
                  ).box.height(50).padding(EdgeInsets.symmetric(horizontal: 16)).color(textfieldGrey).make(),
                  20.heightBox,
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: 'Color :'.text.color(textfieldGrey).make(),
                          ),
                          Row(
                              children: List.generate(3,
                                  (index) => VxBox().size(30, 30).color(Vx.randomPrimaryColor).margin(EdgeInsets.symmetric(horizontal: 4)).roundedFull.make()))
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: 'Total :'.text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: [
                              IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                              '0'.text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                              IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                              10.widthBox,
                              '( 0 avalabel )'.text.make()
                            ],
                          )
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: 'Total :'.text.color(textfieldGrey).make(),
                          ),
                          '\$0.00'.text.color(redColor).fontFamily(bold).size(16).make(),
                          Row(
                            children: [10.widthBox, '( 0 avalabel )'.text.make()],
                          )
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                    ],
                  ).box.white.shadowSm.make(),
                  10.heightBox,
                  'Description'.text.color(darkFontGrey).fontFamily(semibold).make(),
                  10.heightBox,
                  'This is a dummy item and dummy description here..'.text.color(darkFontGrey).make(),
                  ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(
                        itemDetailButonsList.length,
                        (index) => ListTile(
                              title: '${itemDetailButonsList[index]}'.text.fontFamily(semibold).color(darkFontGrey).make(),
                              trailing: Icon(Icons.arrow_right_alt_outlined),
                            )),
                  ),
                  20.heightBox,
                  productsyoumaylike.text.color(darkFontGrey).fontFamily(bold).size(16).make(),
                  10.heightBox,
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: List.generate(
                              6,
                              (index) => Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        imgP1,
                                        width: 150,
                                        fit: BoxFit.cover,
                                      ),
                                      'Laptop 4GB/64GB'.text.fontFamily(semibold).color(darkFontGrey).make(),
                                      10.heightBox,
                                      '\$500'.text.color(redColor).fontFamily(bold).size(16).make()
                                    ],
                                  ).box.margin(const EdgeInsets.symmetric(horizontal: 6)).color(whiteColor).padding(const EdgeInsets.all(8)).rounded.make())))
                ],
              )),
            )),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ourButton(color: redColor, onPress: () {}, title: 'Add to cart'),
            )
          ],
        ));
  }
}
