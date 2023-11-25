import 'package:get/get.dart';
import 'package:sellerapp/consts/consts.dart';

import '../../widget_common/applogo_widget.dart';
import '../../widget_common/bg_widget.dart';
import '../../widget_common/custom_textfield.dart';
import '../../widget_common/our_button.dart';
import 'controllers/signup_screen.controller.dart';

class SignupScreenScreen extends GetView<SignupScreenController> {
  const SignupScreenScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            appLogoWidget(),
            10.heightBox,
            'Join the $appname'.text.white.fontFamily(semibold).size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(hint: nameHint, title: name),
                customTextField(hint: emailHint, title: email),
                customTextField(hint: passwordHint, title: password),
                customTextField(hint: passwordHint, title: retypePassword),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
                    child: forgetPasswowd.text.make(),
                  ),
                ),
                Row(
                  children: [
                    Obx(() {
                      return Checkbox(
                          checkColor: Colors.white,
                          value: controller.isChecked.value,
                          onChanged: (newValue) {
                            controller.isChecked.value = newValue!;
                          });
                    }),
                    5.widthBox,
                    Expanded(
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(text: 'I agree to the ', style: TextStyle(fontFamily: bold, color: fontGrey)),
                        TextSpan(text: termAndCond, style: TextStyle(fontFamily: bold, color: redColor)),
                        TextSpan(text: ' & ', style: TextStyle(fontFamily: bold, color: fontGrey)),
                        TextSpan(text: privacyPolicy, style: TextStyle(fontFamily: bold, color: redColor)),
                      ])),
                    )
                  ],
                ),
                5.heightBox,
                Obx(() {
                  return ourButton(color: controller.isChecked.value == true ? redColor : whiteColor, title: signUp, textColor: whiteColor, onPress: () {});
                }).box.width(context.screenWidth - 50).make(),
                10.heightBox,
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(text: alreadyHaveAccount, style: TextStyle(fontFamily: bold, color: fontGrey)),
                  TextSpan(text: login, style: TextStyle(fontFamily: bold, color: redColor)),
                ])).onTap(() {
                  Get.back();
                })
              ],
            ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make(),
          ],
        ),
      ),
    ));
  }
}
