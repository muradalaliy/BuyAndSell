import 'package:BuyAndSell/core/repository/auth_repository/exceptions/toast.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:get/get.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();
  final _auth = FirebaseAuth.instance;

// var verifitationId

  Future<User?> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        showToast(message: "The email address is already in use");
      } else {
        showToast(message: "An error occured : ${e.code}");
      }
    }
    return null;
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == "wrong-password") {
        showToast(message: "Invalid email or password");
      } else {
        showToast(message: "An error occured: ${e.code}");
      }
      return null;
    }
  }

  Future<void> logout() async => await _auth.signOut();
  //FirebaseAuth.instance.signOut();
  //  Get.toNamed(AppRoute.login);
}
