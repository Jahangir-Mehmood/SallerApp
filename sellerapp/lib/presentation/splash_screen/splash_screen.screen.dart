import 'package:get/get.dart';
import 'package:sellerapp/consts/consts.dart';
import 'package:sellerapp/infrastructure/navigation/routes.dart';

import '../../widget_common/applogo_widget.dart';

class SplashScreenScreen extends StatefulWidget {
  const SplashScreenScreen({super.key});

  @override
  State<SplashScreenScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreenScreen> {
  changeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Get.toNamed(Routes.LOGIN_SCREEN);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(icSplashBg, width: 300),
            ),
            20.heightBox,
            appLogoWidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            5.heightBox,
            appversion.text.white.make(),
            const Spacer(),
            credits.text.white.fontFamily(semibold).make(),
            30.heightBox
          ],
        ),
      ),
    );
  }
}
