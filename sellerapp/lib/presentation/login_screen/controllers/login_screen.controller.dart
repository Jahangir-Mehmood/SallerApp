import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../../consts/consts.dart';

class LoginScreenController extends GetxController {
  //TODO: Implement LoginScreenController
  Future<UserCredential?> loginMethod({email, password, context}) async {
    UserCredential? userCredential;
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
