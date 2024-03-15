
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

class CustomButtonChangePassword extends StatelessWidget {
  const CustomButtonChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 40,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 2),
        textColor: Colors.white,
        onPressed: () {
        
        },
        color: AppColor.darkGreen,
        child:  Text(
          "Save Changes".tr,
          style: const TextStyle(),
        ),
      ),
    );
  }
}
