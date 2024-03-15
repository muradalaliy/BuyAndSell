import 'package:BuyAndSell/controller/auth/signupcontroller.dart';
import 'package:BuyAndSell/core/class/handlingdataview.dart';
//import 'package:BuyAndSell/core/class/statusrequest.dart';
import 'package:BuyAndSell/core/constant/color.dart';

import 'package:BuyAndSell/view/widget/authentication/customtextbodyauth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/functions/alertexitapp.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/authentication/custombuttonauth.dart';
import '../../widget/authentication/customtextsignuporsignin.dart';
import '../../widget/authentication/customtexttitleauth.dart';
import '../../widget/authentication/customtextformauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        centerTitle: true,
        title: Text(
          "Sign Up".tr,
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: AppColor.grey),
        ),
        elevation: 0.0,
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<SignUpControllerImp>(
          builder: (controller) =>
              //   controller.statusRequest==StatusRequest.loading ?Center()
              // :
              Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Form(
              key: controller.formstate,
              child: HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: ListView(children: [
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextTitleAuth(
                    text: "Welcome".tr,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextBodyAuth(
                      textBody:
                          "Please join us and create account to \nfully enjoy our exclusive services"
                              .tr),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.grey.shade300,
                              child: controller.image.path != null
                                  ? controller
                                      .buildImageWidget(controller.image)
                                  : SizedBox()),
                          InkWell(
                            onTap: () {
                              controller.getImage();
                            },
                            child: const CircleAvatar(
                              radius: 12,
                              backgroundColor: AppColor.buttonNanbar,
                              child: Icon(
                                Icons.add,
                                size: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextFormAuth(
                    isNumber: false,
                    valid: (val) {
                      return validInput(val!, 2, 15, "username");
                    },
                    hinttext: "Enter Your Username".tr,
                    iconData: Icons.person_outline,
                    labletext: "Username".tr,
                    mycontroller: controller.usernamecontroller,
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
                  CustomTextFormAuth(
                    isNumber: true,
                    valid: (val) {
                      return validInput(val!, 5, 30, "phone");
                    },
                    hinttext: "Enter Your Phone".tr,
                    iconData: Icons.phone_android_outlined,
                    labletext: "Phone".tr,
                    mycontroller: controller.phonecontroller,
                  ),
                  GetBuilder<SignUpControllerImp>(
                      builder: (controller) => CustomTextFormAuth(
                            obscureText: controller.isShowPassword,
                            onTapIcon: () {
                              controller.showPassword();
                            },
                            isNumber: false,
                            valid: (val) {
                              return validInput(val!, 5, 100, "Password");
                            },
                            hinttext: "Enter Your Password".tr,
                            iconData: Icons.lock_outline,
                            labletext: "Password".tr,
                            mycontroller: controller.passwordcontroller,
                          )),
                  CustomButtonAuth(
                    buttontext: "Sign Up".tr,
                    onPressed: () {
                      controller.signup();
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomTextSignUpOrSignIn(
                      textOne: " have an account ".tr,
                      buttonText: " Sign In ".tr,
                      onTap: () {
                        controller.goToSigbIn();
                      })
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
