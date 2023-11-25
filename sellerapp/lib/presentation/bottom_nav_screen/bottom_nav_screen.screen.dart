import 'package:get/get.dart';
import 'package:sellerapp/consts/consts.dart';

import '../../consts/list.dart';
import '../../widget_common/home_button.dart';
import '../home/compunents/featured_button.dart';
import 'controllers/bottom_nav_screen.controller.dart';

class BottomNavScreenScreen extends GetView<BottomNavScreenController> {
  const BottomNavScreenScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        width: context.screenWidth,
        height: context.screenHeight,
        color: lightGrey,
        child: SafeArea(
            child: Column(children: [
          const SizedBox(height: 40),
          Container(
            alignment: Alignment.center,
            height: 60,
            color: lightGrey,
            child: TextFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchanything,
                  hintStyle: TextStyle(
                    color: textfieldGrey,
                  )),
            ),
          ),
          10.heightBox,
          Expanded(
              child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(children: [
                    //1st SLIDER //////////////////////
                    VxSwiper.builder(
                        enlargeCenterPage: true,
                        height: 100,
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        itemCount: sliderList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            sliderList[index],
                            fit: BoxFit.fill,
                          ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                        }),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          2,
                          (index) => homeButton(
                              height: context.height * 0.15,
                              width: context.width / 2.5,
                              icon: index == 0 ? icTodaysDeal : icFlashDeal,
                              title: index == 0 ? todaydeal : flashsale)),
                    ),
                    10.heightBox,
                    //2nd SLIDER //////////////////////
                    VxSwiper.builder(
                        enlargeCenterPage: true,
                        height: 100,
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        itemCount: secondSliderList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            secondSliderList[index],
                            fit: BoxFit.fill,
                          ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                        }),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          3,
                          (index) => homeButton(
                              height: context.height * 0.15,
                              width: context.width / 3.5,
                              icon: index == 0
                                  ? icTopCategories
                                  : index == 1
                                      ? icBrands
                                      : icTopSeller,
                              title: index == 0
                                  ? topcategories
                                  : index == 1
                                      ? brand
                                      : topsallers)),
                    ),
                    20.heightBox,
                    Align(alignment: Alignment.centerLeft, child: featuredcategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make()),
                    20.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            3,
                            (index) => Column(
                                  children: [
                                    featuredButton(icon: featuredImages1[index], title: featuredtitle[index]),
                                    10.heightBox,
                                    featuredButton(icon: featuredImages2[index], title: featuredtitle2[index]),
                                  ],
                                )).toList(),
                      ),
                    ),
                    20.heightBox,
                    Container(
                        padding: const EdgeInsets.all(12),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                        ),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          featuredproduct.text.color(whiteColor).fontFamily(bold).size(18).make(),
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
                                          )
                                              .box
                                              .margin(const EdgeInsets.symmetric(horizontal: 6))
                                              .color(whiteColor)
                                              .padding(const EdgeInsets.all(8))
                                              .rounded
                                              .make())))
                        ])),
                    20.heightBox,
                    // 3rd SLIDER//////////////////
                    VxSwiper.builder(
                        enlargeCenterPage: true,
                        height: 100,
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        itemCount: secondSliderList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            secondSliderList[index],
                            fit: BoxFit.fill,
                          ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                        }),
                    20.heightBox,

                    //GRID VIEW //////////////////////
                    GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 6,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent: 250),
                        itemBuilder: (context, index) {
                          return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            Image.asset(imgP5, height: 180, width: 150, fit: BoxFit.cover),
                            const Spacer(),
                            'Laptop 4GB/64GB'.text.fontFamily(semibold).color(darkFontGrey).make(),
                            10.heightBox,
                            '\$500'.text.color(redColor).fontFamily(bold).size(16).make()
                          ]).box.margin(const EdgeInsets.symmetric(horizontal: 6)).color(whiteColor).padding(const EdgeInsets.all(12)).rounded.make();
                        })
                  ])))
        ])));
  }
}
