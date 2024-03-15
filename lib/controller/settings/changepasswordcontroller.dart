import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ChangePasswordController extends GetxController {}

class ChangePasswordControllerImp extends ChangePasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  TextEditingController oldpasswordcontroller = TextEditingController();
  TextEditingController newpasswordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();

  bool isShowPassword = true;

  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  @override
  void onInit() {
    oldpasswordcontroller = TextEditingController();
    newpasswordcontroller = TextEditingController();
    confirmpasswordcontroller = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    oldpasswordcontroller.dispose();
    newpasswordcontroller.dispose();
    confirmpasswordcontroller.dispose();

    super.dispose();
  }
}
