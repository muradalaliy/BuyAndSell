import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/success_resetpassword_controller.dart';
import '../../../../core/constant/color.dart';
import '../../../widget/authentication/custombuttonauth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller =
        Get.put(SuccessResetPasswordControllerImp());
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
              color: AppColor.primaryColor,
            )),
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
          ],
        ),
      ),
    );
  }
}
