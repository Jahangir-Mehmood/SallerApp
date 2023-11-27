import '../consts/consts.dart';

Widget bgWidget(Widget? child) {
  return Container(
    // margin: const EdgeInsets.only(top: 40),
    decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(imgBackground), fit: BoxFit.fill)),
    child: child,
  );
}
