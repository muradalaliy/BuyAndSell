import 'package:BuyAndSell/controller/auth/forgetpasswordcontroller.dart';

import 'package:BuyAndSell/core/constant/color.dart';
import 'package:BuyAndSell/view/widget/authentication/customtextbodyauth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/functions/validinput.dart';
import '../../../widget/authentication/custombuttonauth.dart';

import '../../../widget/authentication/customtexttitleauth.dart';
import '../../../widget/authentication/customtextformauth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        centerTitle: true,
        title: Text(
          "Forget Password".tr,
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
              text: "Check Email".tr,
            ),
            const SizedBox(
              height: 10,
            ),
             CustomTextBodyAuth(
                textBody:
                    "Please Enter Your Email Address To Recive A Verification code".tr),
            const SizedBox(
              height: 15,
            ),
            CustomTextFormAuth(
              isNumber: false,
               valid: (val){
                  return validInput(val!, 5, 100, "email");
              },
              hinttext: "Enter Your Email".tr,
              iconData: Icons.email_outlined,
              labletext: "Email".tr,
              mycontroller: controller.email,
            ),
            CustomButtonAuth(
              buttontext: "Check".tr,
              onPressed: () {
                controller.goToVerfiyCode();
              },
            ),
            const SizedBox(
              height: 40,
            ),
          ]),
        ),
      ),
    );
  }
}
