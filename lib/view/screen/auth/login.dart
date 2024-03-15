import 'package:BuyAndSell/core/class/handlingdataview.dart';
import 'package:BuyAndSell/core/constant/color.dart';
import 'package:BuyAndSell/core/functions/alertexitapp.dart';
import 'package:BuyAndSell/core/functions/validinput.dart';
import 'package:BuyAndSell/view/widget/authentication/customtextbodyauth.dart';
import 'package:BuyAndSell/view/widget/authentication/customtextsignuporsignin.dart';

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../controller/auth/logincontroller.dart';
import '../../widget/authentication/custombuttonauth.dart';
import '../../widget/authentication/customtexttitleauth.dart';
import '../../widget/authentication/customtextformauth.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        centerTitle: true,
        elevation: 0.0,
      ),

      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Form(
            key: controller.formstate,
            child: GetBuilder<LoginControllerImp>(builder: (conttroler) {
              return HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: ListView(children: [
                  // const LogoAuth(),
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
                  CustomTextTitleAuth(
                    text: "Welcome Back".tr,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextBodyAuth(
                      textBody:
                          "Sign Up With Your Email And Password or Continue With Social Media"
                              .tr),
                  const SizedBox(
                    height: 25,
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
                        controller.login();
                      }),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        onPressed: () {},
                        color: AppColor.colorGoogle,
                        textColor: Colors.white,
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.google),
                            SizedBox(
                              width: 9,
                            ),
                            Text("Sign in with Google".tr,
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
                      textOne: "Don't have an account ?  ".tr,
                      buttonText: "Sign Up".tr,
                      onTap: () {
                        controller.goToSigbup();
                      })
                ]),
              );
            }),
          ),
        ),
      ),
      //تشتغل عند الضغط على باك
    );
  }
}
