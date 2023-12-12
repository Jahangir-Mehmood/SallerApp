import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:sellerapp/consts/consts.dart';

class SignupScreenController extends GetxController {
  //TODO: Implement SignupScreenController

  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController repassword = TextEditingController();
  final isChecked = false.obs;
  // Future<UserCredential?> signupMethod({email, password, context}) async {
  //   UserCredential? userCredential;
  //   try {
  //     await auth.signInWithEmailAndPassword(email: email, password: password);
  //   } on FirebaseAuthException catch (e) {
  //     VxToast.show(context, msg: e.toString());
  //   }
  //   return userCredential;
  // }

  Future<UserCredential?> signupMethod({email, password, context}) async {
    UserCredential? userCredential;
    try {
      userCredential = await auth.createUserWithEmailAndPassword(email: email, password: password);

      // Store user data only if sign up is successful
      if (userCredential != null) {
        storeUserData(name.text, password.text, email.text);
      }
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }

  storeUserData(name, password, email) {
    DocumentReference store = firestore.collection(usersCollection).doc(currentUser!.uid);
    store.set({'name': name, 'password': password, 'email': email, 'imageUrl': ''});
  }

  signoutMethod(context) async {
    try {
      await auth.signOut();
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }

  final RxInt count = 0.obs;

  void increment() => count.value++;
}
