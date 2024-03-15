
import 'package:BuyAndSell/controller/auth/verfiycodecontroller.dart';

import 'package:BuyAndSell/core/constant/color.dart';
import 'package:BuyAndSell/view/widget/authentication/customtextbodyauth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../widget/authentication/customtexttitleauth.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerfiyCodeControllerImp controller =
        Get.put(VerfiyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        centerTitle: true,
        title: Text(
          "Verification Code".tr,
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: AppColor.grey),
        ),
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
           CustomTextTitleAuth(
            text: "Check Code".tr,
          ),
          const SizedBox(
            height: 10,
          ),
           CustomTextBodyAuth(
              textBody: "Please Enter The Digit Code Sent To yousra@gmail.com".tr),
          const SizedBox(
            height: 15,
          ),
          OtpTextField(
            fieldWidth: 50.0,
            borderRadius: BorderRadius.circular(20),
            numberOfFields: 5,
            borderColor: AppColor.primaryColor,
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              controller.goToResetPassword();
            }, // end onSubmit
          ),
          const SizedBox(
            height: 30,
          ),
        ]),
      ),
    );
  }
}
