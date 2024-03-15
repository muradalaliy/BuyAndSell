import 'package:BuyAndSell/core/constant/color.dart';
import 'package:BuyAndSell/view/widget/authentication/customtextbodyauth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/resetpasswordcontroller.dart';
import '../../../../core/functions/validinput.dart';
import '../../../widget/authentication/custombuttonauth.dart';


import '../../../widget/authentication/customtextformauth.dart';
import '../../../widget/authentication/customtexttitleauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        centerTitle: true,
        title: Text(
          "Reset Password".tr,
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: AppColor.grey),
        ),
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(children: [
             CustomTextTitleAuth(
              text: "New Password".tr,
            ),
            const SizedBox(
              height: 10,
            ),
             CustomTextBodyAuth(textBody: "Please Enter New Password".tr),
            const SizedBox(
              height: 15,
            ),
        
            CustomTextFormAuth(
              isNumber: false,
               valid: (val){
                  return validInput(val!, 5, 100, "password");
              },
              hinttext: "Enter Your Password".tr,
              iconData: Icons.email_outlined,
              labletext: "Password".tr,
              mycontroller: controller.password,
            ),
        
             CustomTextFormAuth(
              isNumber: false,
               valid: (val){
                  return validInput(val!, 5, 100, "password");
              },
              hinttext: "Re-Enter Your Password".tr,
              iconData: Icons.email_outlined,
              labletext: "Re-Password".tr,
              mycontroller: controller.password,
            ),
           
        
            CustomButtonAuth(
              buttontext: "Save".tr,
              onPressed: () {
                controller.goToSuccessResetPassword();
              },
            ),
            const SizedBox(
              height: 30,
            ),
          ]),
        ),
      ),
    );
  }
}
