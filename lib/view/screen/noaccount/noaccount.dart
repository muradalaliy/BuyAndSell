import 'package:BuyAndSell/controller/auth/logincontroller.dart';
import 'package:BuyAndSell/controller/onboarding_controller.dart';

import 'package:BuyAndSell/core/constant/color.dart';
import 'package:BuyAndSell/core/functions/alertexitapp.dart';
import 'package:BuyAndSell/core/functions/validinput.dart';
import 'package:BuyAndSell/view/widget/authentication/custombuttonauth.dart';
import 'package:BuyAndSell/view/widget/authentication/customtextbodyauth.dart';
import 'package:BuyAndSell/view/widget/authentication/customtextformauth.dart';
import 'package:BuyAndSell/view/widget/authentication/customtextsignuporsignin.dart';
import 'package:BuyAndSell/view/widget/authentication/customtexttitleauth.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class NoAccount extends GetView<OnBoardingControllerImp> {
  const NoAccount({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios,
                color: AppColor.buttonNanbar,
              ),
            ),
          ),
        ),
        body: WillPopScope(
          onWillPop: alertExitApp,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Form(
              key: controller.formstate,
              child: ListView(children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.lock,
                    color: AppColor.curved,
                  ),
                  iconSize: 40,
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: CustomTextTitleAuth(
                        text: "Welcome Back".tr,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextBodyAuth(
                        textBody:
                            "Please Sign Up To Access This Operation.".tr),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                CustomTextFormAuth(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 5, 100, "email");
                  },
                  hinttext: "Enter Your Email".tr,
                  iconData: Icons.email_outlined,
                  labletext: "Email".tr,
                  mycontroller: controller.emailcontroller,
                ),
                GetBuilder<LoginControllerImp>(
                  builder: (controller) => CustomTextFormAuth(
                    obscureText: controller.isShowPassword,
                    onTapIcon: () {
                      controller.showPassword();
                    },
                    isNumber: false,
                    valid: (val) {
                      return validInput(val!, 5, 30, "password");
                    },
                    hinttext: "Enter Your Password".tr,
                    iconData: Icons.lock_outline,
                    labletext: "Password".tr,
                    mycontroller: controller.passwordcontroller,
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.goToForgetPassword();
                  },
                  child: Text(
                    "Forget Password".tr,
                    textAlign: TextAlign.end,
                  ),
                ),
                CustomButtonAuth(
                    buttontext: "Login".tr,
                    onPressed: () {
                      // controller.Login();
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.symmetric(horizontal: 77),
                      onPressed: () {},
                      color: AppColor.colorGoogle,
                      textColor: Colors.white,
                      child: Row(
                        children: [
                          Icon(FontAwesomeIcons.google),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Sign in with Google",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomTextSignUpOrSignIn(
                    textOne: "Don't have an account ? ".tr,
                    buttonText: "Sign Up ".tr,
                    onTap: () {
                      controller.goToSigbup();
                    })
              ]),
            ),
          ),
        ));
  }
}
