import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

class CustomTextSignUpOrSignIn extends StatelessWidget {
  final String buttonText;
  final String textOne;
  final void Function() onTap;
  const CustomTextSignUpOrSignIn(
      {super.key, required this.textOne, required this.buttonText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textOne.tr),
        InkWell(
          onTap: onTap,
          child: Text(
            buttonText.tr,
            style: const TextStyle(
                color: AppColor.colorGoogle, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
