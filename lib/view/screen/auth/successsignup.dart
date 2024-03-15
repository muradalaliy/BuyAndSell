
import 'package:BuyAndSell/controller/auth/success_signup_controller.dart';
import 'package:BuyAndSell/core/constant/color.dart';
import 'package:BuyAndSell/view/widget/authentication/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpPasswordControllerImp controller =
        Get.put(SuccessSignUpPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        centerTitle: true,
        title: Text(
          "Success".tr,
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: AppColor.grey),
        ),
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
          
            const Center(
                child: Icon(
              Icons.check_circle_outline,
              size: 200,
              color: AppColor.buttonNanbar,
            )),
              SizedBox(height: 30),
            Text("congratulations".tr,
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 30)),
                    
            Text("successfully registered".tr),
           const Spacer(),
            SizedBox(
                width: double.infinity,
                child: CustomButtonAuth(
                  buttontext: "Go To Login".tr,
                  onPressed: () {
                    controller.goToPageLogin();
                  },
                )),
          const  SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
