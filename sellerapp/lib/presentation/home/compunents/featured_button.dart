import '../../../consts/consts.dart';

Widget featuredButton({String? title, icon}) {
  return Row(
    children: [
      Image.asset(
        icon,
        width: 50,
        fit: BoxFit.fill,
      ),
      10.widthBox,
      title!.text.fontFamily(semibold).color(fontGrey).make().box.roundedSM.outerShadowSm.make()
    ],
  ).box.color(whiteColor).width(200).padding(const EdgeInsets.all(4)).margin(const EdgeInsets.symmetric(horizontal: 4)).make();
}
