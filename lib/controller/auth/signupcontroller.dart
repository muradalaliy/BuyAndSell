import 'dart:io';

import 'package:BuyAndSell/core/constant/routes.dart';

import 'package:BuyAndSell/core/repository/auth_repository/auth_repository.dart';
import 'package:BuyAndSell/core/repository/auth_repository/exceptions/toast.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handingdatacontroller.dart';
import '../../data/datasource/remote/auth/login.dart';

abstract class SignUpController extends GetxController {
  late File image;

  FirebaseAuth auth = FirebaseAuth.instance;
  //static SignUpController get instance => Get.find();
  // registerUser(String email, String password);
  // SignUp();
  goToSigbIn();
  signup();
  late String verifycode;
  String? verifId;
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  LoginData loginData = LoginData(Get.find());

  StatusRequest statusRequest = StatusRequest.none;

  bool isShowPassword = true;
  final AuthenticationRepository _auth = AuthenticationRepository();
  Future<void> getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      image = File(pickedFile.path);
      // log(image.path);
      update();
      // Do something with the selected image file
    }
  }

  Widget buildImageWidget(File? images) {
    if (images != null) {
      return Image.file(image);
    } else {
      return const Icon(Icons.camera_alt);
    }
  }

  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  @override
  goToSigbIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  onInit() {
    emailcontroller = TextEditingController();
    passwordcontroller = TextEditingController();
    usernamecontroller = TextEditingController();
    phonecontroller = TextEditingController();
    image = File('path/to/image.jpg');

    super.onInit();
  }

  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    usernamecontroller.dispose();
    phonecontroller.dispose();

    super.dispose();
  }

  // StatusRequest? statusRequest;
  // SignupData signupData = SignupData(Get.find());
  // List data = [];
  @override
  void signupFireBase() async {
    String email = emailcontroller.text;
    String password = passwordcontroller.text;
    // String username = usernamecontroller.text;
    // String phone = phonecontroller.text;
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      //خاص ب الفايربيز
      User? user = await _auth.signUpWithEmailAndPassword(email, password);

      if (user != null) {
        showToast(message: "User is Successfully created");
        Get.offNamed(AppRoute.successSignUp);
      } else {
        showToast(message: "Some error happend");
      }
      //خاص ب الفايربيز
    }
  }

  @override
  signup() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.signupData(
          usernamecontroller.text,
          passwordcontroller.text,
          emailcontroller.text,
          phonecontroller.text,
          image);
      statusRequest = handlingData(response);

      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          // print(response['token'].toString());
          Get.defaultDialog(
            title: 'تم',
            middleText: "تم انشاء حساب بنجاح قم بتسجيل الدخول",
            onConfirm: () {
              Get.offAllNamed(AppRoute.login);
            },
          );
        } else {
          Get.defaultDialog(
              title: 'خطا',
              middleText: "خطا في كلمة السر او البريد الالكتروني");
          statusRequest = StatusRequest.none;
        }
      }
      update();
    } else {
      // Get.defaultDialog(
      //     title: 'خطا', middleText: "خطا في كلمة السر او البريد الالكتروني");
      // statusRequest = StatusRequest.none;
    }
  }

  //تجهيز الربط بالباك
  // statusRequest = StatusRequest.loading;
  // update();
  // var response =
  //     await signupData.postdata(username, password, email, phone);
  // print("object , $response");
  // statusRequest = handlingData(response);
  // if (StatusRequest.success == statusRequest) {
  //   if (response['status'] == "success") {
  //     //    data.addAll(response['data']);
  //     Get.offNamed(AppRoute.verifyCodeSignUp , arguments: {
  //       "email": email
  //     });
  //   } else {
  //     Get.defaultDialog(
  //         title: "Warning",
  //         middleText: "Phone Number or Email Already Exists");
  //     statusRequest = StatusRequest.failure;
  //   }
  // }
  //تجهيز الربط بالباك
//  void phoneAuth() async {
//    String phone = phonecontroller.text;
//     await FirebaseAuth.instance.verifyPhoneNumber(
//         phoneNumber: phone,
//         verificationCompleted: (PhoneAuthCredential credential) {},
//         verificationFailed: (FirebaseAuthException e) {  },
//         codeSent: (String verificationId, int? resendToken) async {
//           verifId = verificationId;
//         },
//         codeAutoRetrievalTimeout: (String verifitationId) {
//         });
//   }
//   SentCode() async {
//     try {
//       String smsCode = verifycode;
//       PhoneAuthCredential credential = PhoneAuthProvider.credential(
//           verificationId: verifId!, smsCode: smsCode);
//       await auth.signInWithCredential(credential).then((value) => {
//             if (value.user != null) {Get.offNamed(AppRoute.successSignUp)}
//           });
//     } catch (e) {
//       Get.snackbar("Error", "The provided phone number is valid");
//     }
//   }
  // void phoneAuthentication(String phoneNo) {
  //   AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  // }
}
