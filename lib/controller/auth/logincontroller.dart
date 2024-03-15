import 'dart:developer';

import 'package:BuyAndSell/core/constant/routes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handingdatacontroller.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/auth/login.dart';

abstract class LoginController extends GetxController {
  login();
  // Login();
  goToSigbup();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  LoginData loginData = LoginData(Get.find());

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  MyServices myServices = Get.find();
  StatusRequest statusRequest = StatusRequest.none;

  bool isShowPassword = true;
//  final AuthenticationRepository _auth = AuthenticationRepository();

  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  @override
  login() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response =
          await loginData.login(emailcontroller.text, passwordcontroller.text);
      statusRequest = handlingData(response);

      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          // print(response['token'].toString());
          log(response['customer'].toString());

          myServices.sharedPreferences
              .setString("id", response['customer']['id'].toString());
          myServices.sharedPreferences
              .setString("name", response['customer']['name']);
          myServices.sharedPreferences
              .setString("email", response['customer']['email']);
          myServices.sharedPreferences
              .setString("phone", response['customer']['phone_namber']);
          myServices.sharedPreferences
              .setString("image", response['customer']['image']);

          myServices.sharedPreferences
              .setString("token", response['token'].toString());
          myServices.sharedPreferences.setString("login", "1");
          Get.offAllNamed(AppRoute.home);
        } else {
          Get.defaultDialog(
              title: 'خطا',
              middleText: "خطا في كلمة السر او البريد الالكتروني");
          statusRequest = StatusRequest.none;
        }
      }
      update();
    } else {
      Get.defaultDialog(
          title: 'خطا', middleText: "خطا في كلمة السر او البريد الالكتروني");
      statusRequest = StatusRequest.none;
    }
  }

  @override
  goToSigbup() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    emailcontroller = TextEditingController();
    passwordcontroller = TextEditingController();

    // email = TextEditingController();
    // password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    // email.dispose();
    // password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }

  // @override
  // void Login() async {
  //   String email = emailcontroller.text;
  //   String password = passwordcontroller.text;
  //   var formdata = formstate.currentState;
  //   if (formdata!.validate()) {
  //     User? user = await _auth.signInWithEmailAndPassword(email, password);

  //     if (user != null) {
  //       showToast(message: "User is Successfully Signed in");
  //       Get.offNamed(AppRoute.home);
  //     } else {
  //       showToast(message: "Some error occured");
  //     }
  //   }
  // }
}
