import 'package:get/get.dart';
import 'package:sellerapp/consts/consts.dart';
import 'package:sellerapp/infrastructure/navigation/routes.dart';

import '../../consts/list.dart';
import '../../widget_common/applogo_widget.dart';
import '../../widget_common/bg_widget.dart';
import '../../widget_common/custom_textfield.dart';
import '../../widget_common/our_button.dart';
import 'controllers/login_screen.controller.dart';

class LoginScreenScreen extends GetView<LoginScreenController> {
  const LoginScreenScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
            child: Column(children: [
          (context.screenHeight * 0.1).heightBox,
          appLogoWidget(),
          10.heightBox,
          'Log in to $appname'.text.white.fontFamily(semibold).size(18).make(),
          15.heightBox,
          Column(
            children: [
              customTextField(hint: emailHint, title: email),
              customTextField(hint: passwordHint, title: password),
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {},
                  child: forgetPasswowd.text.make(),
                ),
              ),
              5.heightBox,
              ourButton(
                  color: redColor,
                  title: login,
                  textColor: whiteColor,
                  onPress: () {
                    Get.toNamed(Routes.HOME);
                  }).box.width(context.screenWidth - 50).make(),
              5.heightBox,
              createAccount.text.color(fontGrey).make(),
              ourButton(
                  color: lightGolden,
                  title: signUp,
                  textColor: whiteColor,
                  onPress: () {
                    Get.toNamed(Routes.SIGNUP_SCREEN);
                  }).box.width(context.screenWidth - 50).make()
            ],
          ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make(),
          10.heightBox,
          loginWith.text.color(lightGrey).make(),
          5.heightBox,
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  2,
                  (final int index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(backgroundColor: lightGrey, radius: 25, child: Image.asset(socialIconList[index], width: 30)))))
        ]))));
  }
}
