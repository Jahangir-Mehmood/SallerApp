import 'package:get/get.dart';
import 'package:sellerapp/consts/consts.dart';
import 'package:sellerapp/consts/list.dart';
import 'package:sellerapp/presentation/bottom_nav_screen/account_screen/compunents/detail_cart.dart';
import 'package:sellerapp/widget_common/bg_widget.dart';

import 'controllers/account_screen.controller.dart';

class AccountScreenScreen extends GetView<AccountScreenController> {
  const AccountScreenScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.edit,
                  color: whiteColor,
                ),
              ).onTap(() {}),
              Row(
                children: [
                  Image.asset(
                    imgProfile,
                    width: 70,
                    fit: BoxFit.cover,
                  ).box.clip(Clip.antiAlias).roundedFull.make(),
                  5.widthBox,
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: ['Dummy'.text.fontFamily(semibold).color(whiteColor).make(), 'abd@gmail.com'.text.color(whiteColor).make()],
                  )),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(side: const BorderSide(color: whiteColor, width: 1)),
                      onPressed: () {},
                      child: "logout".text.fontFamily(semibold).white.make())
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  detailCart(width: context.screenWidth / 3.5, title: 'in your cart', count: '00'),
                  detailCart(width: context.screenWidth / 3.5, title: 'in your wishlist', count: '00'),
                  detailCart(width: context.screenWidth / 3.5, title: 'your order', count: '00'),
                ],
              ),
              20.heightBox,
              ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: lightGrey,
                  );
                },
                itemCount: profileButtonList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset(
                      profileButtonIcons[index],
                      width: 22,
                    ),
                    title: profileButtonList[index].text.semiBold.color(darkFontGrey).make(),
                  );
                },
              ).box.white.shadowSm.margin(EdgeInsets.symmetric(horizontal: 10)).rounded.padding(const EdgeInsets.symmetric(horizontal: 16)).make()
            ],
          ),
        ),
      ),
    ));
  }
}
