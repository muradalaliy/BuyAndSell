import 'package:BuyAndSell/controller/settings/changepasswordcontroller.dart';
import 'package:BuyAndSell/core/functions/validinput.dart';
import 'package:BuyAndSell/view/screen/setting/custombuttonchangepass.dart';
import 'package:BuyAndSell/view/screen/setting/customtextformchangepass.dart';
import 'package:BuyAndSell/view/widget/customappbar.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    ChangePasswordControllerImp controller =
        Get.put(ChangePasswordControllerImp());
    return Scaffold(
      appBar: const CustomAppBar(textappbar: "Change Password"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
             
              CustomTextFormChangePass(
               obscureText: controller.isShowPassword,
                      onTapIcon: () {
                   controller.showPassword();
                      },
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, 5, 30, "password");
                      },
                      hinttext: "Enter Your Old Password".tr,
                      iconData: Icons.lock_outline,
                      labletext: "Old Password".tr,
                      mycontroller: controller.oldpasswordcontroller,
                    ),
                   
           
             
           
                 CustomTextFormChangePass(
                      obscureText: controller.isShowPassword,
                      onTapIcon: () {
                        controller.showPassword();
                      },
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, 5, 30, "password");
                      },
                      hinttext: "Enter Your New Password".tr,
                      iconData: Icons.lock_outline,
                      labletext: "New Password".tr,
                      mycontroller: controller.newpasswordcontroller,
                    ),
              
               GetBuilder<ChangePasswordControllerImp>(
                builder: (controller) => 
              
              CustomTextFormChangePass(
                  obscureText: controller.isShowPassword,
                  onTapIcon: () {
                    controller.showPassword();
                  },
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 5, 30, "password");
                  },
                  hinttext: "Enter Your New Password".tr,
                  iconData: Icons.lock_outline,
                  labletext: "Confirm Password".tr,
                  mycontroller: controller.confirmpasswordcontroller,
                ),
              ),
              const SizedBox(height: 55),
              const CustomButtonChangePassword(),
            ],
          ),
        ),
      ),
    );
  }
}
